--------------------------------------------------------------------------------
-- AutoHeal
--
-- Automatically restores the local player's health and armour to their maximum
-- values whenever either drops below its maximum. Re-checks periodically and
-- only writes when a stat is actually below max, so it stays cheap while at
-- full health.
--
-- API: YimMenuV2 Lua (`players`, `network`, `notify`, `log`, `script`, `util`).
-- Original concept: YimMenu C++ `heal` command.
--------------------------------------------------------------------------------
---@diagnostic disable: undefined-global
---Interval between periodic re-checks, in milliseconds (2 seconds).
local CHECK_INTERVAL_MS = 2000

---Armour/health is topped up when below this fraction of max, so the script
---doesn't fight normal gameplay damage tick-by-tick. 0.0 = always top up.
local HEAL_THRESHOLD = 0.0

---Precomputed fraction of max below which we top up (cached upvalue so the
---hot path doesn't recompute `1.0 - HEAL_THRESHOLD` every tick).
local HEAL_FRACTION = 1.0 - HEAL_THRESHOLD

---Cached upvalue for `players.get_local` to skip the global-table lookup per
---tick, mirroring the caching pattern used in snack-armor.lua.
local get_local_player = players.get_local

--------------------------------------------------------------------------------
-- Session detection (mirrors snack-armor.lua)
--------------------------------------------------------------------------------
local FREEMODE_HASH ---@type integer
local get_freemode_thread_ct ---@type fun(scriptHash: integer): integer

local function ensure_natives_loaded()
    if natives and not natives.are_natives_loaded() then
        natives.load_natives()
    end

    if not FREEMODE_HASH then
        FREEMODE_HASH = util.joaat("freemode")
    end

    if not get_freemode_thread_ct and type(SCRIPT) == "table" then
        get_freemode_thread_ct = SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH
    end
end

---@return boolean? running
local function check_freemode_running()
    if get_freemode_thread_ct then
        local count = get_freemode_thread_ct(FREEMODE_HASH)
        return count and count > 0
    end
    return nil
end

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

--------------------------------------------------------------------------------
-- Core heal logic
--------------------------------------------------------------------------------
---Top up health and armour if either is below its configured threshold.
---Returns true if anything was restored.
---@return boolean healed
local function maybe_heal()
    local player = get_local_player()
    if not player or not player:is_valid() then
        return false
    end

    local ped = player:get_ped()
    if not ped or not ped:is_valid() or ped:is_dead() then
        return false
    end

    local maxHealth = ped:get_max_health()
    local maxArmour = player:get_max_armour()

    local healed = false

    local curHealth = ped:get_health()
    if curHealth < maxHealth * HEAL_FRACTION then
        ped:set_health(maxHealth)
        healed = true
    end

    local curArmour = ped:get_armour()
    if curArmour < maxArmour * HEAL_FRACTION then
        ped:set_armour(maxArmour)
        healed = true
    end

    return healed
end

------------------------------------------------------------------------------
-- Main entry point
--
-- 1. Load natives once, cache function references.
-- 2. Wait for a freemode (GTA Online) session, polling every 2 s while offline.
-- 3. Once online, loop forever: every CHECK_INTERVAL_MS, top up health/armour
--    only when either has dropped below its maximum.
------------------------------------------------------------------------------
script.run_in_callback(function()
    ensure_natives_loaded()

    log.info("==========================================================")
    log.info("================= AutoHeal Script Loaded =================")
    log.info("==========================================================")

    script.yield(2000)
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
            script.yield(2000)

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

    log.info("======== DETECTED: Online - Starting AutoHeal Loop ========")

    script.yield(4000)

    -- Initial top-up.
    if maybe_heal() then
        notify.success("AutoHeal", "Health and armour restored.")
        log.info("================= Initial Heal Complete ==================")
    end

    -- Main loop: only write when a stat has dropped.
    while true do
        script.yield(CHECK_INTERVAL_MS)
        maybe_heal()
    end
end)
