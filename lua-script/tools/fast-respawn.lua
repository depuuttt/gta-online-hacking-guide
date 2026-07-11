script.run_in_callback(function()
    log.info("\n\27[37m\27[4;33mScript\27[m - \27[4;37mFast Respawn\27[m\nInitialized successfully.")
    local logresp = {"Wasted Screen Skipped!", "Player Respawned a thousand times!", "Fast-Respawn!",
                     "mp_forcerespawnpla... oops, wrong game.", "Had to make the script longer somehow.",
                     "I Need Healing!", "Couldn't find a way to respawn in the same spot, sry." -- ,
    -- "Moar text"
    }
    local n = #logresp
    local WASTED_GLOBAL = ScriptGlobal(2658294 + 1 + 236)
    local RESPAWN_GLOBAL = ScriptGlobal(2635562 + 2924)
    local was_wasted = false
    while true do -- Original TinkerScript by ImagineNothing
        local is_wasted = WASTED_GLOBAL:get_int() == -1
        if is_wasted and not was_wasted then
            RESPAWN_GLOBAL:set_int(1)
            log.info(logresp[math.random(n)])
        end
        was_wasted = is_wasted
        script.yield()
    end
end)
