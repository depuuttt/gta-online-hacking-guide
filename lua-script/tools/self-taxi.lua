script.run_in_callback(function()
    natives.load_natives()
    local cls = "                                            \r"
    local lual = "\r\27[9C]\27[94m[INFO/LuaScript]\27[m "
    local lual_s = ": \27[92mInitialized successfully\27[m                           "
    local lual_r =
        "\27[m: \27[33mPlease join any freemode session and reload the script\27[m                           "
    local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and
                         not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
    -- By ImagineNothing

    if IsOnline then
        log.info(lual .. "Self Taxi" .. lual_s .. cls)
    else
        notify.info("Script - Self Taxi", "Please join any freemode session and reload the script.")
        log.info(lual .. "Self Taxi" .. lual_r .. cls)
        return
    end

    local PlaPed = PLAYER.PLAYER_PED_ID()
    local PlaVeh = PED.GET_VEHICLE_PED_IS_IN(PlaPed, false)

    if PlaVeh ~= 0 then
        local wp_blip = HUD.GET_FIRST_BLIP_INFO_ID(8)
        if HUD.DOES_BLIP_EXIST(wp_blip) then
            local wp_coords = HUD.GET_BLIP_INFO_ID_COORD(wp_blip)
            TASK.TASK_VEHICLE_DRIVE_TO_COORD(PlaPed, PlaVeh, wp_coords.x, wp_coords.y, wp_coords.z, 35.0, 0, 0, 2885948,
                10.0, 0) -- 1074528293 | 786603 | custom = 2885948
            notify.info("Script - Self Taxi", "Auto Drive to Waypoint has started.")
            log.info(lual .. "Self Taxi: Auto Drive to Waypoint has started." .. cls)
            local tick = 0
            while true do
                if not HUD.DOES_BLIP_EXIST(wp_blip) then
                    TASK.CLEAR_PED_TASKS(PlaPed)
                    notify.info("Script - Self Taxi", "Waypoint cleared, aborting.")
                    log.info(lual .. "Self Taxi: Waypoint cleared, aborting." .. cls)
                    return
                end
                if not PED.IS_PED_IN_VEHICLE(PlaPed, PlaVeh, false) then
                    TASK.CLEAR_PED_TASKS(PlaPed)
                    notify.info("Script - Self Taxi", "Left the vehicle, aborting.")
                    log.info(lual .. "Self Taxi: Left the vehicle, aborting." .. cls)
                    return
                end
                if (tick % 10) == 0 then
                    wp_coords = HUD.GET_BLIP_INFO_ID_COORD(wp_blip)
                end
                tick = tick + 1
                local PlaCoords = ENTITY.GET_ENTITY_COORDS(PlaPed, 0)
                local dist = wp_coords:get_distance(PlaCoords)
                if dist < 80.0 then
                    TASK.CLEAR_PED_TASKS(PlaPed)
                    notify.info("Script - Self Taxi", "Destination reached.")
                    log.info(lual .. "Self Taxi: Destination reached." .. cls)
                    break
                end
                if PAD.IS_CONTROL_JUST_PRESSED(0, 22) then -- SPACEBAR
                    notify.info("Script - Self Taxi", "Auto Drive to Waypoint has been canceled.")
                    log.info(lual .. "Self Taxi: Auto Drive to Waypoint has been canceled." .. cls)
                    TASK.CLEAR_PED_TASKS(PlaPed)
                    return
                end
                script.yield(0)
            end
        else
            notify.info("Script - Self Taxi", "Please set a waypoint first.")
        end
    else
        notify.info("Script - Self Taxi", "You are not in a vehicle.")
    end
end)
