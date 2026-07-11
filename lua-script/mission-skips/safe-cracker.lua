menu.set_menu_name("Safe Cracker")
natives.load_natives()
local Tinker = menu.get_submenu()
local TinkerSC = Tinker:add_category("Main")

local CluckinRaider = TinkerSC:add_group("Cluckin' Raider", 4)
local StashH = TinkerSC:add_group("Stash House", 4)

local CB_SCRIPT = "fm_mission_controller_2020"
local SH_SCRIPT = "fm_content_stash_house"

local CB_SAFE_PROG = 29211 + 12
local CB_WHEEL_INT = 32564 + 2
local CB_WHEEL_FLOAT = 32564 + 1
local CB_PC_COORDS = 34376 + 5
local CB_FACILITY_CHECK = 20959
local CB_CRATE_COORDS = 29211 + 1192

local SH_SAFE_PROG = 146 + 16
local SH_WHEEL_INT = 146 + 23
local SH_WHEEL_FLOAT = 146 + 22

CluckinRaider:add_button("CrackCB", "Crack Cluckin Bell Safe", "Breaks into the safe", function()

    if not scripts.is_active(CB_SCRIPT) then
        notify.error("Safe Cracker", "Please start the Cluckin' Bell Farm Raid.", 3000)
        return
    end

    local CB_SafeProg = ScriptLocal(CB_SCRIPT, CB_SAFE_PROG):get_int()
    if CB_SafeProg == -1 then
        notify.error("Safe Cracker", "You must be at the Safe first!", 3000)
        return
    end

    local wheelInt = ScriptLocal(CB_SCRIPT, CB_WHEEL_INT)
    local wheelFloat = ScriptLocal(CB_SCRIPT, CB_WHEEL_FLOAT)
    for i = 0, 2 do
        wheelInt:at(i, 2):set_int(0)
        wheelFloat:at(i, 2):set_float(0)
        script.yield(100)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 237, 1.0)
    end

    PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 223, 1.0)
    if CB_SafeProg == 6 then
        notify.success("Safe Cracker", "Safe has been Cracked!", 3000)
    end

end)

CluckinRaider:add_button("CBTpToPC", "Teleport to Strongest Signal",
    "Teleports you to the PC with the strongest signal", function()

        if not scripts.is_active(CB_SCRIPT) then
            notify.error("Safe Cracker", "Please start the Cluckin' Bell Farm Raid.", 3000)
            return
        end

        local CB_PCcoords = ScriptLocal(CB_SCRIPT, CB_PC_COORDS):get_vector3()
        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), CB_PCcoords:get_x(), CB_PCcoords:get_y(),
            CB_PCcoords:get_z() + 1.0)

    end)

CluckinRaider:add_button("CBTpToCrate", "Teleport to Crate", "Teleports you to the stashed drugs",
    function() -- Not really, actually it doesn't work that well but I'll leave it here anyway :D

        if not scripts.is_active(CB_SCRIPT) then
            notify.error("Safe Cracker", "Please start the Cluckin' Bell Farm Raid.", 3000)
            return
        end

        if ScriptLocal(CB_SCRIPT, CB_FACILITY_CHECK):get_float() ~= 1000.0 then
            notify.error("Safe Cracker", "You must be at the Storage Facility first!", 3000)
            return
        end

        local CB_Cratecoords = ScriptLocal(CB_SCRIPT, CB_CRATE_COORDS):get_vector3()
        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), CB_Cratecoords:get_x(), CB_Cratecoords:get_y(),
            CB_Cratecoords:get_z())

    end)

StashH:add_button("CrackSH", "Crack Stash House Safe", "Breaks into the safe", function()

    if not scripts.is_active(SH_SCRIPT) then
        notify.error("Safe Cracker", "You are not in the Stash House!", 3000)
        return
    end

    local SH_SafeProg = ScriptLocal(SH_SCRIPT, SH_SAFE_PROG):get_int()
    if SH_SafeProg == -1 then
        notify.error("Safe Cracker", "You must be at the Safe first!", 3000)
        return
    end

    local wheelInt = ScriptLocal(SH_SCRIPT, SH_WHEEL_INT)
    local wheelFloat = ScriptLocal(SH_SCRIPT, SH_WHEEL_FLOAT)
    for i = 0, 2 do
        wheelInt:at(i, 2):set_int(0)
        wheelFloat:at(i, 2):set_float(0)
    end

    script.yield(2100)
    PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 237, 1.0)
    if SH_SafeProg == 6 then
        notify.success("Safe Cracker", "Safe has been Cracked!", 3000)
    end

end)

-- Original TinkerScript By ImagineNothing
