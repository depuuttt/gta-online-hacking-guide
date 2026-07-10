--------------------------------- CAYO SETUP GUI ---------------------------------
-- Original script converted to a GUI using YimMenuV2 ImGui menu API.
-- Sets up the Cayo Perico Heist with configurable options.
menu.set_menu_name("Cayo Setup")
natives.load_natives()

local Cayo = menu.get_submenu()

-- ===== Data tables =====

-- Target options (MPx_H4CNF_TARGET)
local TargetLabels = {"Tequila", "Ruby Necklace", "Bearer Bonds", "Pink Diamond", "Madrazo Files", "Panther Statue"}

-- Weapon options (MPx_H4CNF_WEAPONS)
local WeaponLabels = {"Aggressor", "Conspirator", "Crackshot", "Saboteur", "Marksman"}

-- Loot type options
-- 0=None, 1=Cash, 2=Cocaine, 3=Weed, 4=Gold, 5=Paintings
local LootLabels = {"None", "Cash", "Cocaine", "Weed", "Gold", "Paintings"}

-- ===== State =====

local setupState = {
    progress = true,
    hardMode = false,
    missions = true,
    general = true,
    target = 5, -- Panther Statue
    weapons = 0 -- Aggressor
}

local lootState = {
    islandType = 4, -- Gold
    islandValue = 538484,
    compoundType = 5, -- Paintings
    compoundValue = 0
}

-- ===== Loot apply logic =====

local function ClearAllLootStats()
    for _, sfx in ipairs({"CASH", "COKE", "WEED", "GOLD"}) do
        stats.set_int("MPx_H4LOOT_" .. sfx .. "_I", 0)
        stats.set_int("MPx_H4LOOT_" .. sfx .. "_I_SCOPED", 0)
        stats.set_int("MPx_H4LOOT_" .. sfx .. "_C", 0)
        stats.set_int("MPx_H4LOOT_" .. sfx .. "_C_SCOPED", 0)
    end
    stats.set_int("MPx_H4LOOT_PAINT", 0)
    stats.set_int("MPx_H4LOOT_PAINT_SCOPED", 0)
end

local LootTypeToSuffix = {
    [1] = "CASH",
    [2] = "COKE",
    [3] = "WEED",
    [4] = "GOLD"
}

local function ApplyLootLocation(lootType, location, value)
    if lootType == 0 then
        return
    end -- None

    if lootType == 5 then
        -- Paintings only exist in compound (PAINT has no _I / _C split)
        if location == "C" then
            stats.set_int("MPx_H4LOOT_PAINT", -1)
            if value > 0 then
                stats.set_int("MPx_H4LOOT_PAINT_V", value)
            end
        end
        return
    end

    local suffix = LootTypeToSuffix[lootType]
    if not suffix then
        return
    end

    stats.set_int("MPx_H4LOOT_" .. suffix .. "_" .. location, -1)
    stats.set_int("MPx_H4LOOT_" .. suffix .. "_" .. location .. "_SCOPED", -1)
    if value > 0 then
        stats.set_int("MPx_H4LOOT_" .. suffix .. "_V", value)
    end
end

-- ===== Category: Setup =====

local setupCat = Cayo:add_category("Setup")
setupCat:imgui(function()
    ImGui.SeparatorText("Scoping & Progress")

    setupState.progress = ImGui.Checkbox("Complete All Scoping", setupState.progress)
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Sets H4_PROGRESS to 131055 (all scoping done).")
    end

    setupState.hardMode = ImGui.Checkbox("Enable Hard Mode", setupState.hardMode)
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip(
            "Sets H4_PROGRESS to 130415 (hard mode, higher payout).\nOverrides 'Complete All Scoping' if both enabled.")
    end

    ImGui.SeparatorText("Prep & General")

    setupState.missions = ImGui.Checkbox("Complete All Prep Missions", setupState.missions)
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Sets H4_MISSIONS to -1 (all missions done).")
    end

    setupState.general = ImGui.Checkbox("Full General Bitmask", setupState.general)
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Sets H4CNF_BS_GEN to -1 (all general bits).")
    end

    ImGui.SeparatorText("Primary Target")

    ImGui.SetNextItemWidth(300)
    setupState.target = ImGui.Combo("##target", setupState.target, TargetLabels, #TargetLabels)
    ImGui.SameLine()
    ImGui.Text("Target")

    ImGui.SeparatorText("Weapon Loadout")

    ImGui.SetNextItemWidth(450)
    setupState.weapons = ImGui.Combo("##weapons", setupState.weapons, WeaponLabels, #WeaponLabels)
    ImGui.SameLine()
    ImGui.Text("Loadout")

    ImGui.Spacing()
    ImGui.Separator()
    ImGui.Spacing()

    if ImGui.Button("Apply Setup", 200, 0) then
        script.run_in_callback(function()
            if setupState.hardMode then
                stats.set_int("MPx_H4_PROGRESS", 130415)
            elseif setupState.progress then
                stats.set_int("MPx_H4_PROGRESS", 131055)
            end

            if setupState.general then
                stats.set_int("MPx_H4CNF_BS_GEN", -1)
            end

            stats.set_int("MPx_H4CNF_TARGET", setupState.target)
            stats.set_int("MPx_H4CNF_WEAPONS", setupState.weapons + 1)

            if setupState.missions then
                stats.set_int("MPx_H4_MISSIONS", -1)
            end

            notify.success("Cayo Setup GUI", "Setup applied successfully!")
        end)
    end
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Applies all scoping, prep, target, and weapon settings.")
    end
end)

-- ===== Category: Loot =====

local lootCat = Cayo:add_category("Loot")
lootCat:imgui(function()
    ImGui.TextWrapped(
        "Choose a loot type for each location. Set the type to -1 (max) and optionally set a custom value.")
    ImGui.Spacing()

    ImGui.SeparatorText("Island Loot")

    ImGui.SetNextItemWidth(200)
    lootState.islandType = ImGui.Combo("##islandType", lootState.islandType, LootLabels, #LootLabels)
    ImGui.SameLine()
    ImGui.Text("Type")

    ImGui.SetNextItemWidth(200)
    lootState.islandValue = ImGui.InputInt("##islandValue", lootState.islandValue, 1000, 10000)
    ImGui.SameLine()
    ImGui.Text("Value (0 = skip)")

    ImGui.SeparatorText("Compound Loot")

    ImGui.SetNextItemWidth(200)
    lootState.compoundType = ImGui.Combo("##compoundType", lootState.compoundType, LootLabels, #LootLabels)
    ImGui.SameLine()
    ImGui.Text("Type")

    ImGui.SetNextItemWidth(200)
    lootState.compoundValue = ImGui.InputInt("##compoundValue", lootState.compoundValue, 1000, 10000)
    ImGui.SameLine()
    ImGui.Text("Value (0 = skip)")

    ImGui.Spacing()
    ImGui.Separator()
    ImGui.Spacing()

    if ImGui.Button("Apply Loot", 200, 0) then
        script.run_in_callback(function()
            ClearAllLootStats()
            ApplyLootLocation(lootState.islandType, "I", lootState.islandValue)
            ApplyLootLocation(lootState.compoundType, "C", lootState.compoundValue)
            notify.success("Cayo Setup GUI", "Loot applied successfully!")
        end)
    end
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Clears all loot then applies the selected types and values.")
    end

    ImGui.SameLine()

    if ImGui.Button("Reset All Loot", 200, 0) then
        script.run_in_callback(function()
            ClearAllLootStats()
            stats.set_int("MPx_H4LOOT_GOLD_V", 0)
            stats.set_int("MPx_H4LOOT_PAINT_V", 0)
            notify.success("Cayo Setup GUI", "All loot stats reset to 0.")
        end)
    end
    if ImGui.IsItemHovered() then
        ImGui.SetTooltip("Clears every loot stat (including gold and paint values) to 0.")
    end
end)
