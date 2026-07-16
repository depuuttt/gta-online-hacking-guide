script.run_in_callback(function()
    log.info("\n\27[37m\27[4;33mScript\27[m - \27[4;37mFast Respawn\27[m\nInitialized successfully.")
    local logresp = {"Wasted screen skipped.", "Player respawned.", "Fast respawn triggered.",
                     "Forced respawn.", "Death sequence bypassed.", "Respawn acknowledged."}
    local n = #logresp
    local WASTED_GLOBAL = ScriptGlobal(2658294 + 1 + 236)
    local RESPAWN_GLOBAL = ScriptGlobal(2635562 + 2924)
    local was_wasted = false
    while true do
        local is_wasted = WASTED_GLOBAL:get_int() == -1
        if is_wasted and not was_wasted then
            RESPAWN_GLOBAL:set_int(1)
            log.info(logresp[math.random(n)])
        end
        was_wasted = is_wasted
        script.yield()
    end
end)

-- Credits:
-- ImagineNothing | Original TinkerScript
