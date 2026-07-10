--------------------------------- BIZ-TEROIDS GUI ---------------------------------
-- Original TinkerScript By ImagineNothing
-- GUI version using YimMenuV2 ImGui menu API

menu.set_menu_name("Biz-teroids")
natives.load_natives()

local Biz = menu.get_submenu()

-- Property globals (ScriptGlobal addresses)
local whprop     = 1845299 + 1 + 260 + 128
local hangarprop = 1845299 + 1 + 260 + 304
local bbizprop   = 1845299 + 1 + 260 + 205
local ncprop     = 1845299 + 1 + 260 + 364
local syprop     = 1845299 + 1 + 260 + 504
local cwprop     = 1882717 + 1 + 158 + 27

-- Hangar goods types
local HGgoodtypes = {
    { 0, "Animal Materials" },    { 1, "Art & Antiques" },
    { 2, "Chemicals" },           { 3, "Counterfeit Goods" },
    { 4, "Jewelry & Gemstones" }, { 5, "Medical Supplies" },
    { 6, "Narcotics" },           { 7, "Tobacco & Alcohol" },
}

-- Warehouse goods types
local WHgoodtypes = {
    { 0, "Medical Supplies" },  { 1, "Tobacco & Alcohol" },
    { 2, "Art & Antiques" },    { 3, "Electronic Goods" },
    { 4, "Weapons & Ammo" },    { 5, "Narcotics" },
    { 6, "Gemstones" },         { 7, "Animal Materials" },
    { 8, "Counterfeit Goods" }, { 9, "Jewelry" },
    { 10, "Bullion" },
}

-- MC Business locations
local MCbizlocs = {
    [1]  = "Paleto Bay",                  [6]  = "El Burro Heights",
    [11] = "Gran Senora Desert",          [16] = "Terminal",
    [2]  = "Mount Chiliad",               [7]  = "Downtown Vinewood",
    [12] = "San Chianski Mountain Range", [17] = "Elysian Island",
    [3]  = "Paleto Bay",                  [8]  = "Morningwood",
    [13] = "Alamo Sea",                   [18] = "Elysian Island",
    [4]  = "Paleto Bay",                  [9]  = "Vespucci Canals",
    [14] = "Gran Senora Desert",          [19] = "Cypress Flats",
    [5]  = "Paleto Bay",                  [10] = "Textile City",
    [15] = "Grapeseed",                   [20] = "Elysian Island",
    [21] = "Grand Senora Oilfields",      [22] = "Grand Senora Desert",
    [23] = "Route 68",                    [24] = "Farmhouse",
    [25] = "Smoke Tree Road",             [26] = "Thomson Scrapyard",
    [27] = "Grapeseed",                   [28] = "Paleto Forest",
    [29] = "Raton Canyon",                [30] = "Lago Zancudo",
    [31] = "Chumash",
}

-- MC Business definitions
local MCbiz = {
    { MCBname = "Methamphetamine Lab",      ID = { 1, 6, 11, 16 } },
    { MCBname = "Weed Farm",                ID = { 2, 7, 12, 17 } },
    { MCBname = "Cocaine Lockup",           ID = { 3, 8, 13, 18 } },
    { MCBname = "Counterfeit Cash Factory", ID = { 4, 9, 14, 19 } },
    { MCBname = "Document Forgery Office",  ID = { 5, 10, 15, 20 } },
    { MCBname = "Bunker",                   ID = { 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 } },
}

-- MC Business restock data
local MCBusinessData = {
    {
        name         = "Methamphetamine Lab",
        shortName    = "Meth",
        maxStock     = 19,
        prodTunables = { 1370024930, 1944848251, 1577999189, 1678460062 },
        costTunables = { -730135062, -660914094 },
        hasMaxWarn   = true,
        notOwnedMsg  = "You don't own a Methamphetamine Lab.",
    },
    {
        name         = "Weed Farm",
        shortName    = "Weed",
        maxStock     = 79,
        prodTunables = { -635596193, -1694873660, 1575359233, 102029883 },
        costTunables = { -373027461, 1195564032 },
        hasMaxWarn   = true,
        notOwnedMsg  = "You don't own a Weed Farm.",
    },
    {
        name         = "Cocaine Lockup",
        shortName    = "Coke",
        maxStock     = 9,
        prodTunables = { 702413484, 2070857577, -1539796661, 396217128 },
        costTunables = { -161187879, 1500658261 },
        hasMaxWarn   = true,
        notOwnedMsg  = "You don't own a Cocaine Lockup.",
    },
    {
        name         = "Counterfeit Cash Factory",
        shortName    = "Cash",
        maxStock     = 39,
        prodTunables = { 1310272402, 1690071006, -1454958662, -1913260493 },
        costTunables = { 631857857, -891680742 },
        hasMaxWarn   = true,
        notOwnedMsg  = "You don't own a Counterfeit Cash Factory.",
    },
    {
        name         = "Document Forgery Office",
        shortName    = "Documents",
        maxStock     = 59,
        prodTunables = { -959721585, 1672482518, -518264160, 489023341 },
        costTunables = { -1839004359, -192060672 },
        hasMaxWarn   = true,
        notOwnedMsg  = "You don't own a Document Forgery Office.",
    },
    {
        name         = "Bunker",
        shortName    = "Bunker",
        maxStock     = 99,
        prodTunables = { 215868155, 631477612, 818645907 },
        costTunables = { -1652502760, 1647327744 },
        hasMaxWarn   = false,
        notOwnedMsg  = "You don't own a Bunker.",
    },
}

-- Acid Lab data (special: uses direct slot 6 check, not GetBusinessSlot)
local AcidLabData = {
    prodTunables = { -672998848, 494316332, -40235252 },
    costTunables = { -1506354854, -993236072 },
    maxStock     = 159,
}

-- ===================== Helper Functions =====================

local function RequireOnline()
    if not (NETWORK.NETWORK_IS_SESSION_STARTED()
        and not NETWORK.NETWORK_IS_IN_TRANSITION()
        and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()) then
        notify.error("Script - Biz-teroids GUI", "Please join any freemode session first.")
        return false
    end
    return true
end

-- Credit to Silenthy6 (SilentSalo) for this logic
local function GetBusinessSlot(businessName)
    for _, business in ipairs(MCbiz) do
        if business.MCBname == businessName then
            for i = 0, 5 do
                local slot = ScriptGlobal(bbizprop):at(i, 13):get_int()
                if slot > 0 then
                    for _, id in ipairs(business.ID) do
                        if slot == id then
                            local loc = MCbizlocs[slot] or "?"
                            log.info(string.format("Business: %s | Location: %s | Slot: %d | ID: %d",
                                businessName, loc, i, slot))
                            return true, i
                        end
                    end
                end
            end
        end
    end
    return false
end

-- ===================== Action Functions =====================

local function DoRestockHangarWarehouse(maxgoods, hgSetGood, hgGoodType, whSetGood, whGoodType)
    if maxgoods then
        notify.info("Script - Biz-teroids GUI", "Hangar and Warehouse(s) instant max restock enabled.")
    else
        notify.info("Script - Biz-teroids GUI", "Hangar and Warehouse(s) will be replenished with mixed goods.")
    end
    script.yield(1000)

    -- Hangar
    if ScriptGlobal(hangarprop):get_int() >= 1 then
        if ScriptGlobal(hangarprop + 3):get_int() <= 49 then
            if maxgoods then
                if hgSetGood then
                    ScriptGlobal(1882707 + 8):set_int(hgGoodType)
                end
                ScriptGlobal(1882707 + 7):set_int(50)
                stats.set_packed_bool(36828, true)
            else
                for _ = 0, 49 do
                    stats.set_packed_bool(36828, true)
                    script.yield(1500)
                end
            end
            notify.success("Success!", "Hangar goods replenished!")
        else
            notify.warn("Oops!", "Hangar is at max capacity.")
        end
    else
        notify.error("Script - Biz-teroids GUI", "You don't own a Hangar")
    end

    -- Warehouse(s)
    if ScriptGlobal(whprop + 1):get_int() >= 1 then
        for c = 0, 4 do
            if ScriptGlobal(whprop + 1):at(c, 3):get_int() <= 110 then
                if maxgoods then
                    if whSetGood then
                        ScriptGlobal(1882682 + 16):set_int(whGoodType)
                    end
                    for _ = 1, 5 do
                        for wh = 32359, 32363 do
                            script.yield(100)
                            ScriptGlobal(1882682 + 13):set_int(111)
                            stats.set_packed_bool(wh, true)
                        end
                    end
                else
                    for _ = 0, 110 do
                        for _ = 1, 5 do
                            for wh = 32359, 32363 do
                                script.yield(100)
                                stats.set_packed_bool(wh, true)
                            end
                        end
                    end
                end
                notify.success("Success!", "Warehouse(s) goods replenished!")
            else
                notify.warn("Oops!", "Warehouse(s) are at max capacity.")
            end
        end
    else
        notify.error("Script - Biz-teroids GUI", "You don't own a Warehouse")
    end
end

local function DoResupplyMC()
    for b = 0, 7 do
        if ScriptGlobal(bbizprop):at(b, 13):get_int() >= 1 then
            for bsup = 1, 7 do
                ScriptGlobal(1673814 + bsup):set_int(1)
            end
        end
    end
    notify.success("Success!", "All businesses supplies have been replenished!")
end

local function DoRestockMCBusiness(data)
    local found, slot = GetBusinessSlot(data.name)
    if not found then
        notify.error("Script - Biz-teroids GUI", data.notOwnedMsg)
        return
    end
    if ScriptGlobal(bbizprop + 1):at(slot, 13):get_int() <= data.maxStock then
        for _, t in ipairs(data.prodTunables) do
            tunables.set_int(t, 1)
        end
        for _, t in ipairs(data.costTunables) do
            tunables.set_int(t, 1)
        end
        script.yield(2000)
        notify.success("Success!", data.shortName .. " Business restock ready!\nPlease restart your business.")
    elseif data.hasMaxWarn then
        notify.warn("Oops!", data.shortName .. " Business stock is at max capacity!")
    end
end

local function DoRestockAcidLab()
    if ScriptGlobal(bbizprop):at(6, 13):get_int() >= 1 then
        if ScriptGlobal(bbizprop + 1):at(6, 13):get_int() <= AcidLabData.maxStock then
            for _, t in ipairs(AcidLabData.prodTunables) do
                tunables.set_int(t, 1)
            end
            for _, t in ipairs(AcidLabData.costTunables) do
                tunables.set_int(t, 1)
            end
            script.yield(2000)
            notify.success("Success!", "Acid Lab Business restock ready!\nPlease restart your business.")
        end
    else
        notify.error("Script - Biz-teroids GUI", "You don't own an Acid Lab.")
    end
end

local function DoRestockAllMC()
    for _, data in ipairs(MCBusinessData) do
        DoRestockMCBusiness(data)
        script.yield(500)
    end
    DoRestockAcidLab()
end

local function DoNightclubPopularity()
    if ScriptGlobal(ncprop):get_int() >= 1 then
        if ScriptGlobal(ncprop + 4):get_float() <= 99.0 then
            stats.set_int("MPX_CLUB_POPULARITY", 1000)
            notify.success("Success!", "Nightclub Popularity has been maxed out!")
        else
            notify.info("Script - Biz-teroids GUI", "Nightclub popularity is already maxed.")
        end
    else
        notify.error("Script - Biz-teroids GUI", "You don't own a Nightclub.")
    end
end

local function DoNightclubGoods()
    if ScriptGlobal(ncprop):get_int() >= 1 then
        for _, t in ipairs({ -147565853, -1390027611, -1292210552, 1007184806, 18969287, -863328938, 1607981264 }) do
            tunables.set_int(t, 1)
        end
        script.yield(2000)
        notify.success("Success!", "Nightclub restock ready!\nPlease re-assign your technicians.")
    else
        notify.error("Script - Biz-teroids GUI", "You don't own a Nightclub.")
    end
end

local function DoNightclubAll(restockGoods)
    if ScriptGlobal(ncprop):get_int() >= 1 then
        if ScriptGlobal(ncprop + 4):get_float() <= 99.0 then
            stats.set_int("MPX_CLUB_POPULARITY", 1000)
            notify.success("Success!", "Nightclub Popularity has been maxed out!")
        end
        if restockGoods then
            for _, t in ipairs({ -147565853, -1390027611, -1292210552, 1007184806, 18969287, -863328938, 1607981264 }) do
                tunables.set_int(t, 1)
            end
            notify.success("Success!", "Nightclub restock ready!\nPlease re-assign your technicians.")
        end
        script.yield(2000)
    else
        notify.error("Script - Biz-teroids GUI", "You don't own a Nightclub.")
    end
end

local function DoSalvageYard()
    if ScriptGlobal(syprop):get_int() >= 1 then
        stats.set_packed_int(51051, 100)
        notify.success("Success!", "Salvage Yard Popularity has been maxed out!")
    else
        notify.error("Script - Biz-teroids GUI", "You don't own a Salvage Yard.")
    end
end

local function DoMoneyFronts()
    if ScriptGlobal(cwprop + 1):get_int() >= 1 and ScriptGlobal(cwprop + 13):get_int() >= 0 then
        for tycoonh = 24924, 24926 do
            stats.set_packed_int(tycoonh, 0)
        end
        notify.success("Success!", "Money Fronts Businesses Heat Removed!")
    else
        notify.error("Script - Biz-teroids GUI", "You don't own Hands on Car Wash.")
    end
end

-- ===================== GUI BUILDING =====================

-- ===== Category: Hangar & Warehouse =====
local hwCat = Biz:add_category("Hangar & Warehouse")

local hwGeneral = hwCat:add_group("General Settings", 1)
local hwHangar  = hwCat:add_group("Hangar Settings", 1)
local hwWare    = hwCat:add_group("Warehouse Settings", 1)
local hwActions = hwCat:add_group("Actions", 4)

local sHGWHrestock = hwGeneral:add_checkbox("biz_hgwh_restock", "Restock Hangar & Warehouse##setting",
    "Enable Hangar and Warehouse restocking for 'Run All'", true)
local sHGWHmaxgoods = hwGeneral:add_checkbox("biz_hgwh_maxgoods", "Instant Max Goods",
    "Instantly max out stock. If disabled, restocks with mixed goods (slower).", true)

local sHGsetgood = hwHangar:add_checkbox("biz_hg_setgood", "Set Hangar Goods Type",
    "If enabled, uses the selected goods type for Hangar instead of random.", false)
local sHGgoodtype = commandmgr.add_list_command("biz_hg_goodtype", "Hangar Goods Type",
    "Goods type for Hangar", HGgoodtypes, 6)
hwHangar:add_list_command("biz_hg_goodtype")

local sWHsetgood = hwWare:add_checkbox("biz_wh_setgood", "Set Warehouse Goods Type",
    "If enabled, uses the selected goods type for Warehouse(s) instead of random.", false)
local sWHgoodtype = commandmgr.add_list_command("biz_wh_goodtype", "Warehouse Goods Type",
    "Goods type for Warehouse(s)", WHgoodtypes, 6)
hwWare:add_list_command("biz_wh_goodtype")

hwActions:add_button("biz_resthw", "Restock Hangar & Warehouse",
    "Restocks Hangar and Warehouse(s) using current settings.", function()
        if not RequireOnline() then return end
        DoRestockHangarWarehouse(
            sHGWHmaxgoods:get_value(),
            sHGsetgood:get_value(),
            sHGgoodtype:get_value(),
            sWHsetgood:get_value(),
            sWHgoodtype:get_value()
        )
    end)

-- ===== Category: MC Businesses =====
local mcCat = Biz:add_category("MC Businesses")
local mcSettings = mcCat:add_group("Settings", 1)
local mcActions = mcCat:add_group("Actions", 4)

local sMCresup = mcSettings:add_checkbox("biz_mc_resup", "Resupply All",
    "Enable MC Businesses resupply for 'Run All'", true)
local sMCrestock = mcSettings:add_checkbox("biz_mc_restock", "Restock All",
    "Enable MC Businesses restock for 'Run All'", false)

mcActions:add_button("biz_mc_resupply", "Resupply All MC Businesses",
    "Replenishes supplies for all owned MC businesses.", function()
        if not RequireOnline() then return end
        DoResupplyMC()
    end)

mcActions:add_button("biz_mc_restock_all", "Restock All MC Businesses",
    "Restocks all owned MC businesses (Meth, Weed, Coke, Cash, Documents, Bunker, Acid Lab).", function()
        if not RequireOnline() then return end
        DoRestockAllMC()
    end)

for idx, data in ipairs(MCBusinessData) do
    mcActions:add_button("biz_mc_restock_" .. idx, "Restock " .. data.shortName,
        "Restocks " .. data.name .. ".\nYou must restart the business afterwards.", function()
            if not RequireOnline() then return end
            DoRestockMCBusiness(data)
        end)
end

mcActions:add_button("biz_mc_restock_acid", "Restock Acid Lab",
    "Restocks Acid Lab.\nYou must restart the business afterwards.", function()
        if not RequireOnline() then return end
        DoRestockAcidLab()
    end)

-- ===== Category: Nightclub =====
local ncCat = Biz:add_category("Nightclub")
local ncSettings = ncCat:add_group("Settings", 1)
local ncActions = ncCat:add_group("Actions", 4)

local sNCgoods = ncSettings:add_checkbox("biz_nc_goods", "Restock Goods",
    "Enable Nightclub goods restock for 'Run All'.\nYou must re-assign technicians afterwards.", false)

ncActions:add_button("biz_nc_pop", "Max Nightclub Popularity",
    "Maxes out the Nightclub popularity bar.", function()
        if not RequireOnline() then return end
        DoNightclubPopularity()
    end)

ncActions:add_button("biz_nc_restock_goods", "Restock Nightclub Goods",
    "Restocks Nightclub goods.\nYou must re-assign your technicians afterwards.", function()
        if not RequireOnline() then return end
        DoNightclubGoods()
    end)

-- ===== Category: Other Businesses =====
local otherCat = Biz:add_category("Other Businesses")
local otherActions = otherCat:add_group("Actions", 4)

otherActions:add_button("biz_sy_pop", "Max Salvage Yard Reputation",
    "Maxes out Salvage Yard reputation/popularity.", function()
        if not RequireOnline() then return end
        DoSalvageYard()
    end)

otherActions:add_button("biz_mf_heat", "Remove Money Fronts Heat",
    "Removes heat levels from Money Fronts businesses (Hands on Car Wash).", function()
        if not RequireOnline() then return end
        DoMoneyFronts()
    end)

-- ===== Category: Master Control Terminal =====
local mctCat = Biz:add_category("Master Control Terminal")
local mctGroup = mctCat:add_group("Terminal", 1)

mctGroup:add_looped_checkbox("biz_mct", "Enable Master Control Terminal",
    "Hold BACKSPACE or CAPSLOCK to manage your businesses.",
    function()
        if ScriptGlobal(2652582 + 2706):get_int() ~= -1 then
            if PAD.IS_CONTROL_PRESSED(0, 171) or PAD.IS_CONTROL_PRESSED(0, 194) then
                SCRIPT.REQUEST_SCRIPT("apparcadebusinesshub")
                if SCRIPT.HAS_SCRIPT_LOADED("apparcadebusinesshub") then
                    BUILTIN.START_NEW_SCRIPT("apparcadebusinesshub", 8344)
                    SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED("apparcadebusinesshub")
                end
            end
        end
        script.yield(200)
    end,
    function()
        notify.info("Script - Biz-teroids GUI",
            "Master Control Terminal ready.\nHold BACKSPACE or CAPSLOCK to manage your businesses.")
    end,
    function()
        notify.info("Script - Biz-teroids GUI", "Master Control Terminal disabled.")
    end)

-- ===== Category: Run All =====
local runCat = Biz:add_category("Run All")
local runGroup = runCat:add_group("All-in-One", 4)

runGroup:add_button("biz_run_all", "Run All Operations",
    "Runs all enabled operations based on current settings.\n" ..
    "You MUST restart your MC businesses and re-assign Nightclub techs after running if restock is enabled.",
    function()
        if not RequireOnline() then return end

        notify.info("Script - Biz-teroids GUI", "Starting all operations...")

        -- Hangar & Warehouse
        if sHGWHrestock:get_value() then
            DoRestockHangarWarehouse(
                sHGWHmaxgoods:get_value(),
                sHGsetgood:get_value(),
                sHGgoodtype:get_value(),
                sWHsetgood:get_value(),
                sWHgoodtype:get_value()
            )
        else
            notify.info("Script - Biz-teroids GUI", "Hangar & Warehouse restocking disabled. Skipping...")
        end

        script.yield(3000)

        -- MC Resupply
        if sMCresup:get_value() then
            DoResupplyMC()
        else
            notify.info("Script - Biz-teroids GUI", "MC Businesses resupply disabled. Skipping...")
        end

        script.yield(3000)

        -- MC Restock
        if sMCrestock:get_value() then
            notify.info("Script - Biz-teroids GUI", "MC Businesses restock enabled.")
            DoRestockAllMC()
        else
            notify.info("Script - Biz-teroids GUI", "MC Businesses restocking disabled. Skipping...")
        end

        script.yield(3000)

        -- Nightclub (always max popularity, restock goods if enabled)
        DoNightclubAll(sNCgoods:get_value())

        -- Salvage Yard (always)
        DoSalvageYard()
        script.yield(2000)

        -- Money Fronts (always)
        DoMoneyFronts()

        notify.success("Script - Biz-teroids GUI", "All operations complete!")
        if sMCrestock:get_value() or sNCgoods:get_value() then
            notify.warn("Script - Biz-teroids GUI",
                "Remember to restart your MC businesses and re-assign Nightclub technicians!")
        end
    end)

-- Original TinkerScript By ImagineNothing
