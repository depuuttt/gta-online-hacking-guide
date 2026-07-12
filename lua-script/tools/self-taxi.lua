--------------------------------- Self Taxi GUI ---------------------------------
-- Persistent GUI version of the Self Taxi script using the YimMenuV2 menu API.
-- Start / Stop / configure auto-drive to the current waypoint from a Self Taxi tab.
-- Original TinkerScript By ImagineNothing
menu.set_menu_name("Self Taxi")
natives.load_natives()
local ST = menu.get_submenu()

local cls = "                                            \r"
local lual = "\r\27[9C]\27[94m[INFO/LuaScript]\27[m "
local lual_s = ": \27[92mInitialized successfully\27[m                           "
local lual_r = "\27[m: \27[33mPlease join any freemode session and reload the script\27[m                           "

local Title = "Script - Self Taxi"
local LogName = "Self Taxi"

local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and
                     not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()

if IsOnline then
    log.info(lual .. LogName .. lual_s .. cls)
else
    notify.info(Title, "Please join any freemode session and reload the script.")
    log.info(lual .. LogName .. lual_r .. cls)
end

-- Runtime state shared between the GUI and the drive coroutine.
local driving = false
local driveSpeed = 35.0
local stopDist = 80.0
local loopRunning = false

local function IsSessionStillActive()
    return NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and
               not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
end

local function StopDrive(reason)
    if not driving then
        return
    end
    driving = false
    local ped = PLAYER.PLAYER_PED_ID()
    if ped and ped ~= 0 then
        TASK.CLEAR_PED_TASKS(ped)
    end
    if reason then
        notify.info(Title, reason)
        log.info(lual .. LogName .. ": " .. reason .. cls)
    end
end

local function StartDrive()
    if driving then
        notify.info(Title, "Already driving to the waypoint.")
        return
    end
    if not IsSessionStillActive() then
        notify.info(Title, "Not in a freemode session.")
        return
    end
    local ped = PLAYER.PLAYER_PED_ID()
    if not ped or ped == 0 then
        notify.info(Title, "Could not get player ped.")
        return
    end
    local veh = PED.GET_VEHICLE_PED_IS_IN(ped, false)
    if not veh or veh == 0 then
        notify.info(Title, "You are not in a vehicle.")
        return
    end
    local wp_blip = HUD.GET_FIRST_BLIP_INFO_ID(8)
    if not HUD.DOES_BLIP_EXIST(wp_blip) then
        notify.info(Title, "Please set a waypoint first.")
        return
    end
    local wp_coords = HUD.GET_BLIP_INFO_ID_COORD(wp_blip)
    TASK.TASK_VEHICLE_DRIVE_TO_COORD(ped, veh, wp_coords.x, wp_coords.y, wp_coords.z, driveSpeed, 0, 0, 2885948, 10.0, 0) -- 1074528293 | 786603 | custom = 2885948
    driving = true
    notify.info(Title, "Auto Drive to Waypoint has started.")
    log.info(lual .. LogName .. ": Auto Drive to Waypoint has started." .. cls)

    if not loopRunning then
        loopRunning = true
        script.run_in_callback(function()
            local tick = 0
            local wp_coords_loop = HUD.GET_BLIP_INFO_ID_COORD(wp_blip)
            while driving do
                if not IsSessionStillActive() then
                    StopDrive("Session ended, aborting.")
                    break
                end
                if not HUD.DOES_BLIP_EXIST(wp_blip) then
                    StopDrive("Waypoint cleared, aborting.")
                    break
                end
                local ped_now = PLAYER.PLAYER_PED_ID()
                if not ped_now or ped_now == 0 then
                    StopDrive("Player ped invalid, aborting.")
                    break
                end
                if not PED.IS_PED_IN_VEHICLE(ped_now, veh, false) then
                    StopDrive("Left the vehicle, aborting.")
                    break
                end
                if (tick % 10) == 0 then
                    wp_coords_loop = HUD.GET_BLIP_INFO_ID_COORD(wp_blip)
                end
                tick = tick + 1
                local coords = ENTITY.GET_ENTITY_COORDS(ped_now, 0)
                local dist = wp_coords_loop:get_distance(coords)
                if dist < stopDist then
                    StopDrive("Destination reached.")
                    break
                end
                if PAD.IS_CONTROL_JUST_PRESSED(0, 22) then -- SPACEBAR
                    StopDrive("Auto Drive to Waypoint has been canceled.")
                    break
                end
                script.yield(0)
            end
            loopRunning = false
        end)
    end
end

-- ===== Category: Drive =====

local driveCat = ST:add_category("Drive")
driveCat:imgui(function()
    ImGui.SeparatorText("Settings")

    driveSpeed = ImGui.SliderFloat("Drive Speed (mph)", driveSpeed, 5.0, 120.0, "%.1f")
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Target cruising speed for the auto-driver.")
    end

    stopDist = ImGui.SliderFloat("Stop Distance", stopDist, 10.0, 300.0, "%.1f")
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Distance to the waypoint at which the driver stops.")
    end

    ImGui.Spacing()
    ImGui.Separator()
    ImGui.Spacing()

    if driving then
        if ImGui.Button("Stop", 200, 0) then
            StopDrive("Auto Drive to Waypoint has been canceled.")
        end
        if ImGui.IsItemHovered() then
            ImGui.SetTooltip("Cancels the current auto-drive and clears the ped task.")
        end
        ImGui.SameLine()
        ImGui.TextColored(0.2, 0.9, 0.3, 1.0, "Driving...")
    else
        if ImGui.Button("Start", 200, 0) then
            StartDrive()
        end
        if ImGui.IsItemHovered() then
            ImGui.SetTooltip("Starts auto-driving to your current waypoint (set one first).")
        end
        ImGui.SameLine()
        if not IsSessionStillActive() then
            ImGui.TextColored(0.9, 0.4, 0.3, 1.0, "Offline")
        else
            ImGui.TextDisabled("Idle")
        end
    end

    ImGui.Spacing()
    ImGui.Separator()
    ImGui.Spacing()

    ImGui.TextDisabled("Press SPACEBAR while driving to cancel early.")
end)

event.register_handler(menu_event.Unload, function()
    StopDrive()
end)
