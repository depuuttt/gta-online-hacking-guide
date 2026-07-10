--------------------------------- Gun Van Halen GUI ---------------------------------
-- GUI version of the Gun Van Halen script using YimMenuV2 ImGui menu API.
-- Edit the gun van weapon slots via combo dropdowns, then click Apply.
-- Original TinkerScript By ImagineNothing
menu.set_menu_name("Gun Van Halen")
natives.load_natives()
local GV = menu.get_submenu()

local GVweapons = {{
    id = 1,
    name = "Pistol",
    hash = "WEAPON_PISTOL"
}, {
    id = 2,
    name = "Combat Pistol",
    hash = "WEAPON_COMBATPISTOL"
}, {
    id = 3,
    name = "AP Pistol",
    hash = "WEAPON_APPISTOL"
}, {
    id = 4,
    name = "Pistol .50",
    hash = "WEAPON_PISTOL50"
}, {
    id = 5,
    name = "SMG",
    hash = "WEAPON_SMG"
}, {
    id = 6,
    name = "Micro SMG",
    hash = "WEAPON_MICROSMG"
}, {
    id = 7,
    name = "Assault Rifle",
    hash = "WEAPON_ASSAULTRIFLE"
}, {
    id = 8,
    name = "Carbine Rifle",
    hash = "WEAPON_CARBINERIFLE"
}, {
    id = 9,
    name = "Advanced Rifle",
    hash = "WEAPON_ADVANCEDRIFLE"
}, {
    id = 10,
    name = "MG",
    hash = "WEAPON_MG"
}, {
    id = 11,
    name = "Combat MG",
    hash = "WEAPON_COMBATMG"
}, {
    id = 12,
    name = "Pump Shotgun",
    hash = "WEAPON_PUMPSHOTGUN"
}, {
    id = 13,
    name = "Sawed-Off Shotgun",
    hash = "WEAPON_SAWNOFFSHOTGUN"
}, {
    id = 14,
    name = "Assault Shotgun",
    hash = "WEAPON_ASSAULTSHOTGUN"
}, {
    id = 15,
    name = "Heavy Sniper",
    hash = "WEAPON_HEAVYSNIPER"
}, {
    id = 16,
    name = "Sniper Rifle",
    hash = "WEAPON_SNIPERRIFLE"
}, {
    id = 17,
    name = "Grenade Launcher",
    hash = "WEAPON_GRENADELAUNCHER"
}, {
    id = 18,
    name = "RPG",
    hash = "WEAPON_RPG"
}, {
    id = 19,
    name = "Minigun",
    hash = "WEAPON_MINIGUN"
}, {
    id = 20,
    name = "Grenade",
    hash = "WEAPON_GRENADE"
}, {
    id = 21,
    name = "Tear Gas",
    hash = "WEAPON_SMOKEGRENADE"
}, {
    id = 22,
    name = "Sticky Bomb",
    hash = "WEAPON_STICKYBOMB"
}, {
    id = 23,
    name = "Molotov",
    hash = "WEAPON_MOLOTOV"
}, {
    id = 24,
    name = "Jerry Can",
    hash = "WEAPON_PETROLCAN"
}, {
    id = 25,
    name = "Knife",
    hash = "WEAPON_KNIFE"
}, {
    id = 26,
    name = "Nightstick",
    hash = "WEAPON_NIGHTSTICK"
}, {
    id = 27,
    name = "Hammer",
    hash = "WEAPON_HAMMER"
}, {
    id = 28,
    name = "Baseball Bat",
    hash = "WEAPON_BAT"
}, {
    id = 29,
    name = "Crowbar",
    hash = "WEAPON_CROWBAR"
}, {
    id = 30,
    name = "Golf Club",
    hash = "WEAPON_GOLFCLUB"
}, {
    id = 31,
    name = "Assault SMG",
    hash = "WEAPON_ASSAULTSMG"
}, {
    id = 32,
    name = "Bullpup Shotgun",
    hash = "WEAPON_BULLPUPSHOTGUN"
}, {
    id = 33,
    name = "Bottle",
    hash = "WEAPON_BOTTLE"
}, {
    id = 34,
    name = "Special Carbine",
    hash = "WEAPON_SPECIALCARBINE"
}, {
    id = 35,
    name = "SNS Pistol",
    hash = "WEAPON_SNSPISTOL"
}, {
    id = 36,
    name = "Heavy Pistol",
    hash = "WEAPON_HEAVYPISTOL"
}, {
    id = 37,
    name = "Bullpup Rifle",
    hash = "WEAPON_BULLPUPRIFLE"
}, {
    id = 38,
    name = "Gusenberg Sweeper",
    hash = "WEAPON_GUSENBERG"
}, {
    id = 39,
    name = "Vintage Pistol",
    hash = "WEAPON_VINTAGEPISTOL"
}, {
    id = 40,
    name = "Antique Cavalry Dagger",
    hash = "WEAPON_DAGGER"
}, {
    id = 41,
    name = "Musket",
    hash = "WEAPON_MUSKET"
}, {
    id = 42,
    name = "Firework Launcher",
    hash = "WEAPON_FIREWORK"
}, {
    id = 43,
    name = "Flare Gun",
    hash = "WEAPON_FLAREGUN"
}, {
    id = 44,
    name = "Heavy Shotgun",
    hash = "WEAPON_HEAVYSHOTGUN"
}, {
    id = 45,
    name = "Marksman Rifle",
    hash = "WEAPON_MARKSMANRIFLE"
}, {
    id = 46,
    name = "Proximity Mine",
    hash = "WEAPON_PROXMINE"
}, {
    id = 47,
    name = "Homing Launcher",
    hash = "WEAPON_HOMINGLAUNCHER"
}, {
    id = 48,
    name = "Hatchet",
    hash = "WEAPON_HATCHET"
}, {
    id = 49,
    name = "Combat PDW",
    hash = "WEAPON_COMBATPDW"
}, {
    id = 50,
    name = "Knuckle Duster",
    hash = "WEAPON_KNUCKLE"
}, {
    id = 51,
    name = "Marksman Pistol",
    hash = "WEAPON_MARKSMANPISTOL"
}, {
    id = 52,
    name = "Machete",
    hash = "WEAPON_MACHETE"
}, {
    id = 53,
    name = "Machine Pistol",
    hash = "WEAPON_MACHINEPISTOL"
}, {
    id = 54,
    name = "Double Barrel Shotgun",
    hash = "WEAPON_DBSHOTGUN"
}, {
    id = 55,
    name = "Compact Rifle",
    hash = "WEAPON_COMPACTRIFLE"
}, {
    id = 56,
    name = "Flashlight",
    hash = "WEAPON_FLASHLIGHT"
}, {
    id = 57,
    name = "Heavy Revolver",
    hash = "WEAPON_REVOLVER"
}, {
    id = 58,
    name = "Switchblade",
    hash = "WEAPON_SWITCHBLADE"
}, {
    id = 59,
    name = "Sweeper Shotgun",
    hash = "WEAPON_AUTOSHOTGUN"
}, {
    id = 60,
    name = "Mini SMG",
    hash = "WEAPON_MINISMG"
}, {
    id = 61,
    name = "Compact Grenade Launcher",
    hash = "WEAPON_COMPACTLAUNCHER"
}, {
    id = 62,
    name = "Battle Axe",
    hash = "WEAPON_BATTLEAXE"
}, {
    id = 63,
    name = "Pipe Bomb",
    hash = "WEAPON_PIPEBOMB"
}, {
    id = 64,
    name = "Pool Cue",
    hash = "WEAPON_POOLCUE"
}, {
    id = 65,
    name = "Pipe Wrench",
    hash = "WEAPON_WRENCH"
}, {
    id = 66,
    name = "Double-Action Revolver",
    hash = "WEAPON_DOUBLEACTION"
}, {
    id = 67,
    name = "Up-n-Atomizer",
    hash = "WEAPON_RAYPISTOL"
}, {
    id = 68,
    name = "Unholy Hellbringer",
    hash = "WEAPON_RAYCARBINE"
}, {
    id = 69,
    name = "Widowmaker",
    hash = "WEAPON_RAYMINIGUN"
}, {
    id = 70,
    name = "Stone Hatchet",
    hash = "WEAPON_STONE_HATCHET"
}, {
    id = 71,
    name = "Navy Revolver",
    hash = "WEAPON_NAVYREVOLVER"
}, {
    id = 72,
    name = "Ceramic Pistol",
    hash = "WEAPON_CERAMICPISTOL"
}, {
    id = 73,
    name = "Perico Pistol",
    hash = "WEAPON_GADGETPISTOL"
}, {
    id = 74,
    name = "Military Rifle",
    hash = "WEAPON_MILITARYRIFLE"
}, {
    id = 75,
    name = "Combat Shotgun",
    hash = "WEAPON_COMBATSHOTGUN"
}, {
    id = 76,
    name = "Heavy Rifle",
    hash = "WEAPON_HEAVYRIFLE"
}, {
    id = 77,
    name = "Compact EMP Launcher",
    hash = "WEAPON_EMPLAUNCHER"
}, {
    id = 78,
    name = "StunGun",
    hash = "WEAPON_STUNGUN_MP"
}, {
    id = 79,
    name = "Service Carbine",
    hash = "WEAPON_TACTICALRIFLE"
}, {
    id = 80,
    name = "Precision Rifle",
    hash = "WEAPON_PRECISIONRIFLE"
}, {
    id = 81,
    name = "WM 29 Pistol",
    hash = "WEAPON_PISTOLXM3"
}, {
    id = 82,
    name = "Candy Cane",
    hash = "WEAPON_CANDYCANE"
}, {
    id = 83,
    name = "Railgun",
    hash = "WEAPON_RAILGUNXM3"
}, {
    id = 84,
    name = "Tactical SMG",
    hash = "WEAPON_TECPISTOL"
}, {
    id = 85,
    name = "Battle Rifle",
    hash = "WEAPON_BATTLERIFLE"
}, {
    id = 86,
    name = "Snowball Launcher",
    hash = "WEAPON_SNOWLAUNCHER"
}, {
    id = 87,
    name = "The Shocker",
    hash = "WEAPON_STUNROD"
}, {
    id = 88,
    name = "El Strickler",
    hash = "WEAPON_STRICKLER"
}}

local gunvanlocs = {
    [1] = {
        locname = "Paleto Bay",
        GVcoords = {-29.532, 6435.136, 31.162}
    },
    [2] = {
        locname = "Grapeseed",
        GVcoords = {1705.214, 4819.167, 41.75}
    },
    [3] = {
        locname = "Sandy Shores",
        GVcoords = {1795.522, 3899.753, 33.869}
    },
    [4] = {
        locname = "Grand Senora Desert",
        GVcoords = {1335.536, 2758.746, 51.099}
    },
    [5] = {
        locname = "Vinewood Sign",
        GVcoords = {795.583, 1210.78, 338.962}
    },
    [6] = {
        locname = "Chumash",
        GVcoords = {-3192.67, 1077.205, 20.594}
    },
    [7] = {
        locname = "Paleto Forest",
        GVcoords = {-789.719, 5400.921, 33.915}
    },
    [8] = {
        locname = "Zancudo River",
        GVcoords = {-24.384, 3048.167, 40.703}
    },
    [9] = {
        locname = "Power Station",
        GVcoords = {2666.786, 1469.324, 24.237}
    },
    [10] = {
        locname = "Lago Zancudo",
        GVcoords = {-1454.966, 2667.503, 3.2}
    },
    [11] = {
        locname = "Thomson Scrapyard",
        GVcoords = {2340.418, 3054.188, 47.888}
    },
    [12] = {
        locname = "El Burro Heights",
        GVcoords = {1509.183, -2146.795, 76.853}
    },
    [13] = {
        locname = "Murrieta Heights",
        GVcoords = {1137.404, -1358.654, 34.322}
    },
    [14] = {
        locname = "Elysian Island",
        GVcoords = {-57.208, -2658.793, 5.737}
    },
    [15] = {
        locname = "Tataviam Mountains",
        GVcoords = {1905.017, 565.222, 175.558}
    },
    [16] = {
        locname = "La Mesa",
        GVcoords = {974.484, -1718.798, 30.296}
    },
    [17] = {
        locname = "Terminal",
        GVcoords = {779.077, -3266.297, 5.719}
    },
    [18] = {
        locname = "La Puerta",
        GVcoords = {-587.728, -1637.208, 19.611}
    },
    [19] = {
        locname = "La Mesa",
        GVcoords = {733.99, -736.803, 26.165}
    },
    [20] = {
        locname = "Del Perro",
        GVcoords = {-1694.632, -454.082, 40.712}
    },
    [21] = {
        locname = "Magellan Ave",
        GVcoords = {-1330.726, -1163.948, 4.313}
    },
    [22] = {
        locname = "West Vinewood",
        GVcoords = {-496.618, 40.231, 52.316}
    },
    [23] = {
        locname = "Downtown Vinewood",
        GVcoords = {275.527, 66.509, 94.108}
    },
    [24] = {
        locname = "Pillbox Hill",
        GVcoords = {260.928, -763.35, 30.559}
    },
    [25] = {
        locname = "Little Seoul",
        GVcoords = {-478.025, -741.45, 30.299}
    },
    [26] = {
        locname = "Alamo Sea",
        GVcoords = {894.94, 3603.911, 32.56}
    },
    [27] = {
        locname = "North Chumash",
        GVcoords = {-2166.511, 4289.503, 48.733}
    },
    [28] = {
        locname = "Mount Chiliad",
        GVcoords = {1465.633, 6553.67, 13.771}
    },
    [29] = {
        locname = "Mirror Park",
        GVcoords = {1101.032, -335.172, 66.944}
    },
    [30] = {
        locname = "Davis",
        GVcoords = {149.683, -1655.674, 29.028}
    }
}

local weaponNames = {}
for _, gun in ipairs(GVweapons) do
    weaponNames[#weaponNames + 1] = gun.name
end

local function FindWeaponIndex(idOrName)
    for i, gun in ipairs(GVweapons) do
        if gun.id == idOrName or gun.name == idOrName then
            return i - 1
        end
    end
    return 0
end

local function RequireOnline()
    if not (NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and
        not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()) then
        notify.error("Script - Gun Van Halen GUI", "Please join any freemode session first.")
        return false
    end
    return true
end

local slotState = {FindWeaponIndex("Railgun"), FindWeaponIndex("Tactical SMG"), FindWeaponIndex("El Strickler"),
                   FindWeaponIndex("Knife"), FindWeaponIndex(67), FindWeaponIndex(84), FindWeaponIndex("Baseball Bat"),
                   FindWeaponIndex(86), FindWeaponIndex("Unholy Hellbringer"), FindWeaponIndex(82)}

local throwableState = {FindWeaponIndex(20), FindWeaponIndex("Tear Gas"), FindWeaponIndex(22)}

local currentLocation = nil
local hotkeyEnabled = false
local hotkeyLoopRunning = false

local function DoApplySlots()
    tunables.set_float(15999531, "inf")
    script.yield(500)
    tunables.set_int(1490225691, 0)
    for i = 1, 10 do
        local gun = GVweapons[slotState[i] + 1]
        log.info("Gun Van Weapon Slot " .. i .. " set to: " .. gun.name)
        tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. (i - 1), util.joaat(gun.hash))
    end
    for i = 1, 3 do
        local gun = GVweapons[throwableState[i] + 1]
        log.info("Gun Van Throwable Slot " .. i .. " set to: " .. gun.name)
        tunables.set_int("XM22_GUN_VAN_SLOT_THROWABLE_TYPE_" .. (i - 1), util.joaat(gun.hash))
    end
end

local function RefreshLocation()
    script.run_in_callback(function()
        if not RequireOnline() then
            return
        end
        local locIdx = STATS.GET_PACKED_STAT_INT_CODE(41239, -1) + 1
        currentLocation = gunvanlocs[locIdx]
        if currentLocation then
            notify.info("Script - Gun Van Halen GUI", "Current Gun Van Location: " .. currentLocation.locname)
        else
            notify.warn("Script - Gun Van Halen GUI", "Could not determine Gun Van location.")
        end
    end)
end

local function TeleportToVan()
    script.run_in_callback(function()
        if not RequireOnline() then
            return
        end
        local locIdx = STATS.GET_PACKED_STAT_INT_CODE(41239, -1) + 1
        local loc = gunvanlocs[locIdx]
        if loc then
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), loc.GVcoords[1], loc.GVcoords[2],
                loc.GVcoords[3] + 1.0)
            notify.success("Script - Gun Van Halen GUI", "Teleported to " .. loc.locname)
        else
            notify.warn("Script - Gun Van Halen GUI", "Could not determine Gun Van location.")
        end
    end)
end

script.run_in_callback(function()
    if not RequireOnline() then
        return
    end
    local locIdx = STATS.GET_PACKED_STAT_INT_CODE(41239, -1) + 1
    currentLocation = gunvanlocs[locIdx]
    if currentLocation then
        log.info("Current Gun Van Location: " .. currentLocation.locname)
    end
    DoApplySlots()
    notify.success("Script - Gun Van Halen GUI", "Default weapons applied to the Gun Van.")
end)

-- ===== Category: Weapon Slots =====

local slotCat = GV:add_category("Weapon Slots")
slotCat:imgui(function()
    ImGui.SeparatorText("Weapon Slots (1-10)")
    for i = 1, 10 do
        ImGui.PushID(i)
        ImGui.SetNextItemWidth(300)
        slotState[i] = ImGui.Combo("##wslot", slotState[i], weaponNames, #weaponNames)
        ImGui.SameLine()
        ImGui.Text("Slot " .. i)
        ImGui.PopID()
    end

    ImGui.Spacing()
    ImGui.SeparatorText("Throwable Slots (1-3)")
    for i = 1, 3 do
        ImGui.PushID(i + 100)
        ImGui.SetNextItemWidth(300)
        throwableState[i] = ImGui.Combo("##tslot", throwableState[i], weaponNames, #weaponNames)
        ImGui.SameLine()
        ImGui.Text("Throwable Slot " .. i)
        ImGui.PopID()
    end

    ImGui.Spacing()
    ImGui.Separator()
    ImGui.Spacing()

    if ImGui.Button("Apply All Slots", 200, 0) then
        script.run_in_callback(function()
            if not RequireOnline() then
                return
            end
            DoApplySlots()
            notify.success("Script - Gun Van Halen GUI", "Selected weapons are now available at the Gun Van.")
        end)
    end
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Applies all weapon and throwable slots to the Gun Van.")
    end
end)

-- ===== Category: Teleport =====

local tpCat = GV:add_category("Teleport")
tpCat:imgui(function()
    ImGui.SeparatorText("Current Gun Van Location")
    if currentLocation then
        ImGui.TextColored(0.3, 0.7, 1.0, 1.0, currentLocation.locname)
    else
        ImGui.TextDisabled("Unknown - click Refresh")
    end

    ImGui.Spacing()
    ImGui.Separator()
    ImGui.Spacing()

    if ImGui.Button("Refresh Location", 200, 0) then
        RefreshLocation()
    end
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Reads the current Gun Van location from game stats.")
    end

    ImGui.SameLine()

    if ImGui.Button("Teleport to Van", 200, 0) then
        TeleportToVan()
    end
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Teleports your player to the current Gun Van location.")
    end

    ImGui.Spacing()
    ImGui.Separator()
    ImGui.Spacing()

    hotkeyEnabled = ImGui.Checkbox("Enable Teleport Hotkey (BACKSPACE / CAPSLOCK)", hotkeyEnabled)
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("When enabled, hold BACKSPACE or CAPSLOCK to teleport to the Gun Van.")
    end

    if hotkeyEnabled and not hotkeyLoopRunning then
        hotkeyLoopRunning = true
        script.run_in_callback(function()
            while hotkeyEnabled do
                if tunables.get_float(15999531) ~= 500.0 then
                    local locIdx = STATS.GET_PACKED_STAT_INT_CODE(41239, -1) + 1
                    local loc = gunvanlocs[locIdx]
                    if loc then
                        if PAD.IS_CONTROL_PRESSED(0, 171) or PAD.IS_CONTROL_PRESSED(0, 194) then
                            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), loc.GVcoords[1], loc.GVcoords[2],
                                loc.GVcoords[3] + 1.0)
                        end
                    end
                end
                script.yield(200)
            end
            hotkeyLoopRunning = false
        end)
    end
end)

-- Original TinkerScript By ImagineNothing
