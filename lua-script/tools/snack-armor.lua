--------------------------------------------------------------------------------
-- SnackArmor (optimized)
--
-- Automatically restores GTA Online consumable and armor stats to their maximum
-- values. The script waits until a freemode session is detected (singleplayer
-- is detected and the script idles until the player goes online), performs an
-- initial top-up, then re-checks every `RELOAD_INTERVAL_MS` milliseconds and
-- only writes stats that have dropped below their configured maximum.
--
-- API: YimMenuV2 Lua (`stats`, `network`, `notify`, `log`, `script`, `util`).
-- Original concept: DJ1987.
--
-- Performance notes vs the original `snack-armor.lua`:
--   * Natives are loaded once at startup (guarded by `are_natives_loaded`).
--   * `util.joaat("freemode")` and the timer/script-thread natives are cached
--     as upvalues so they are never recomputed per poll.
--   * `network.is_session_started()` (high-level API) replaces the on-demand
--     native load + `NETWORK.NETWORK_IS_SESSION_STARTED()` fallback.
--   * The reload phase writes only the stats found below their max instead of
--     rewriting all 15 stats whenever one is low.
--   * The main loop wakes every 30 s instead of every 1 s for a 5 min timer.
--   * Game-timer wrap (32-bit, ~49 days) is handled via unsigned delta.
--------------------------------------------------------------------------------
---@diagnostic disable: undefined-global
-- Local aliases for the global `stats` API (see docs/yimmenu_v2.lua).
local set_stat = stats.set_int
local get_stat = stats.get_int

---Interval between periodic re-checks, in milliseconds (5 minutes).
local RELOAD_INTERVAL_MS = 300000

---Main-loop wakeup interval, in milliseconds (30 seconds). The timer only
---needs minute-scale precision, so a coarse yield cuts wakeups 30×.
local MAIN_LOOP_TICK_MS = 30000

---Stat name -> maximum value mapping for every tracked consumable / armor.
---Only stats found below their max are rewritten, which keeps the script
---from hammering the stat system on every tick.
---@type table<string, integer>
local MAX_VALUES = {
    ["MPX_NO_BOUGHT_YUM_SNACKS"] = 30, -- P's & Q's
    ["MPX_NO_BOUGHT_HEALTH_SNACKS"] = 15, -- EgoChaser
    ["MPX_NO_BOUGHT_EPIC_SNACKS"] = 5, -- Meteorite
    ["MPX_NUMBER_OF_ORANGE_BOUGHT"] = 10, -- eCoLa
    ["MPX_NUMBER_OF_BOURGE_BOUGHT"] = 10, -- [removed]wasser
    ["MPX_NUMBER_OF_CHAMP_BOUGHT"] = 5, -- Blêuter'd Champagne
    ["MPX_CIGARETTES_BOUGHT"] = 20, -- Smokes
    ["MPX_NUMBER_OF_SPRUNK_BOUGHT"] = 10, -- Sprunk
    ["MPX_MP_CHAR_ARMOUR_1_COUNT"] = 10, -- Super Light Armor
    ["MPX_MP_CHAR_ARMOUR_2_COUNT"] = 10, -- Light Armor
    ["MPX_MP_CHAR_ARMOUR_3_COUNT"] = 10, -- Standard Armor
    ["MPX_MP_CHAR_ARMOUR_4_COUNT"] = 10, -- Heavy Armor
    ["MPX_MP_CHAR_ARMOUR_5_COUNT"] = 10, -- Super Heavy Armor
    ["MPX_BREATHING_APPAR_BOUGHT"] = 20 -- Rebreather
}

---Cached upvalues, populated once after natives are loaded.
local FREEMODE_HASH ---@type integer
local get_game_timer ---@type fun(): integer
local get_freemode_thread_ct ---@type fun(scriptHash: integer): integer

---Load native bindings exactly once and cache the function references we need
---so the hot paths never re-resolve globals or allocate lookup closures.
local function ensure_natives_loaded()
    if natives and not natives.are_natives_loaded() then
        natives.load_natives()
    end

    if not FREEMODE_HASH then
        FREEMODE_HASH = util.joaat("freemode")
    end

    if not get_game_timer and type(MISC) == "table" and MISC.GET_GAME_TIMER then
        get_game_timer = MISC.GET_GAME_TIMER
    end

    if not get_freemode_thread_ct and type(SCRIPT) == "table" then
        get_freemode_thread_ct = SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH
    end
end

---Return the current game timer in milliseconds, or `nil` if unavailable.
---@return integer? timer_ms
local function get_game_timer_ms()
    if get_game_timer then
        return get_game_timer()
    end
    return nil
end

---Check whether the freemode script is currently running (i.e. the player is in
---a GTA Online session).
---@return boolean? running `true`/`false` if determined, `nil` if the check failed.
local function check_freemode_running()
    if get_freemode_thread_ct then
        local count = get_freemode_thread_ct(FREEMODE_HASH)
        return count and count > 0
    end
    return nil
end

---Check if the player is in a multiplayer session using the high-level
---`network.is_session_started()` API. Returns `true`, `false`, or `nil`.
---@return boolean? online
local function check_network_online()
    if network and network.is_session_started then
        local ok, result = pcall(network.is_session_started)
        if ok then
            return result and true or false
        end
    end
    return nil
end

---Scan tracked stats and rewrite only those below their max. Returns `true`
---if any stat was topped up, `false` if everything was already maxed.
---Single pass: depleted stats are written as they are discovered.
---@return boolean reloaded
local function check_and_reload_snacks_and_armor()
    local reloaded = false

    for stat_name, max_value in pairs(MAX_VALUES) do
        local current_value = get_stat(stat_name)
        if not current_value or current_value < max_value then
            set_stat(stat_name, max_value)
            reloaded = true
        end
    end

    return reloaded
end

---Compute an unsigned elapsed delta between two 32-bit game-timer samples so
---that wrap-around (~49 days) does not stall the reload loop.
---@param current integer
---@param last integer
---@return integer elapsed_ms
local function elapsed_since(current, last)
    if current >= last then
        return current - last
    end
    -- 0x100000000 = 2^32; handle 32-bit wrap on timer overflow.
    return (0x100000000 - last) + current
end

------------------------------------------------------------------------------
-- Main entry point
--
-- 1. Load natives once, cache function references.
-- 2. Log a startup banner and yield briefly for game initialization.
-- 3. Determine whether a freemode (GTA Online) session is running. If the
--    freemode-thread check is inconclusive, fall back to the network session
--    API. If offline, log a warning once and poll until the player goes
--    online.
-- 4. After confirming an online session, yield 4 s for the session to settle,
--    seed the timer, and perform an initial top-up.
-- 5. Loop forever, re-checking every RELOAD_INTERVAL_MS and reloading only
--    stats that have dropped below their maximum.
------------------------------------------------------------------------------
script.run_in_callback(function()
    -- Resolve native bindings and cache references exactly once.
    ensure_natives_loaded()

    log.info("==========================================================")
    log.info("================ SnackArmor Script Loaded ================")
    log.info("==========================================================")

    -- Wait a bit for game to initialize before checking.
    script.yield(2000)

    -- Re-resolve in case natives finished loading during the initial yield.
    ensure_natives_loaded()

    local freemode_running = check_freemode_running()
    local singleplayer_warned = false

    if freemode_running == nil then
        local network_online = check_network_online()
        if network_online == true then
            freemode_running = true
        elseif network_online == false then
            freemode_running = false
        end
    end

    if freemode_running ~= true then
        if freemode_running == false then
            log.warn("====== DETECTED: Singleplayer - Waiting for Online =======")
            singleplayer_warned = true
        end

        while freemode_running ~= true do
            script.yield(2000) -- Wait 2 seconds between checks.

            freemode_running = check_freemode_running()

            if freemode_running == nil then
                local network_online = check_network_online()
                if network_online == true then
                    freemode_running = true
                    break
                elseif network_online == false then
                    freemode_running = false
                    if not singleplayer_warned then
                        log.warn("====== DETECTED: Singleplayer - Waiting for Online =======")
                        singleplayer_warned = true
                    end
                end
            end
        end
    end

    log.info("===== DETECTED: Online - Starting SnackArmor Script ======")

    -- Wait 4 seconds after online detection to allow the session to settle.
    script.yield(4000)

    local last_reload_time = get_game_timer_ms() or 0

    local reloaded = check_and_reload_snacks_and_armor()
    if reloaded then
        notify.info("SnackArmor", "Snacks and Armor Reloaded")
        log.info("================= Initial Reload Complete ================")
    else
        log.info("=========== All Items Maxed - Skipping Reload ============")
    end

    -- Main loop: wake on MAIN_LOOP_TICK_MS, reload only when the configured
    -- interval has elapsed and only the depleted stats are rewritten.
    while true do
        script.yield(MAIN_LOOP_TICK_MS)

        local current_time = get_game_timer_ms()
        if current_time then
            if elapsed_since(current_time, last_reload_time) >= RELOAD_INTERVAL_MS then
                local reloaded = check_and_reload_snacks_and_armor()
                if reloaded then
                    notify.info("SnackArmor", "Snacks and Armor Reloaded")
                    log.info("=============== Snacks and Armor Reloaded ===============")
                else
                    log.info("=========== All Items Maxed - Skipping Reload ============")
                end
                last_reload_time = current_time
            end
        end
    end
end)
