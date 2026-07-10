--------------------------------- All Arena War Unlocks Only - CONTROL PANEL ---------------------------------
local AW_tier = false -- Should the script set your Arena War Tier to 1000?
local AW_stats = false -- Should the script edit your Arena War stats?

--------------------------------- All Arena War Unlocks Only - CONTROL PANEL ---------------------------------

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
        log.info(cls .. lual .. "All Arena War Unlocks Only" .. lual_s .. "              \r\n")
    else
        notify.info("Script - All Arena War Unlocks Only", "Please join any freemode session and reload the script.")
        log.info(cls .. lual .. "All Arena War Unlocks Only" .. lual_r .. "\n")
        return
    end

    local AW_pb = {{24963, 25000}, {25010, 25010}, {25014, 25014}, {25101, 25109}, {25111, 25134}, {25136, 25179},
                   {25181, 25236}, {25244, 25400}, {25407, 25511}}
    for _, AW in ipairs(AW_pb) do
        stats.set_packed_bool_range(AW[1], AW[2], true)
    end

    stats.set_int("MPX_ARN_BS_TRINKET_SAVED", -1)
    stats.set_packed_int(22063, 20)
    notify.info("Script - All Arena War Unlocks Only", "All Arena War Content is now Unlocked.")
    log.info(cls .. lual .. "All Arena War Unlocks Only: All Arena War Content is now Unlocked.")

    if AW_tier then
        notify.info("Script - All Arena War Unlocks Only", "Edit Arena War Tier Enabled.")
        log.info(cls .. lual .. "All Arena War Unlocks Only: Edit Arena War Tier Enabled.")
        script.yield(2000)
        stats.set_int("MPX_ARENAWARS_AP_TIER", 1000);
        stats.set_int("MPX_ARENAWARS_AP_LIFETIME", 5055000);
        stats.set_int("MPX_ARENAWARS_AP", 10040)
        notify.info("Script - All Arena War Unlocks Only", "Your Arena War Tier is now 1000!")
        log.info(cls .. lual .. "All Arena War Unlocks Only: Your Arena War Tier is now 1000!")
    else
        notify.info("Script - All Arena War Unlocks Only", "Edit Arena War Tier Disabled.")
        log.info(cls .. lual .. "All Arena War Unlocks Only: Edit Arena War Tier Disabled.")
    end

    if AW_stats then
        notify.info("Script - All Arena War Unlocks Only", "Edit Arena War Stats Enabled.")
        log.info(cls .. lual .. "All Arena War Unlocks Only: Edit Arena War Stats Enabled.");
        script.yield(2000)
        stats.set_int("MPX_ARENAWARS_SKILL_LEVEL", 20)
        stats.set_int("MPX_ARENAWARS_SP", 210)
        stats.set_int("MPX_ARENAWARS_SP_LIFETIME", 210)
        stats.set_int("MPX_ARENAWARS_MATCHES_PLYD", 1000)
        stats.set_int("MPX_ARENAWARS_MATCHES_PLYDT", 1000)
        stats.set_int("MPX_ARENAWARS_CARRER_WINS", 1000)
        stats.set_int("MPX_ARENAWARS_CARRER_WINT", 1000)
        stats.set_int("MPX_ARN_LIFETIME_KILLS", 2250)
        stats.set_int("MPX_ARN_LIFETIME_DEATHS", 250)
        stats.set_int("MPX_ARN_SPECTATOR_KILLS", 500)
        stats.set_int("MPX_ARN_W_PASS_THE_BOMB", 1000)
        stats.set_int("MPX_ARN_W_DETONATION", 1000)
        stats.set_int("MPX_ARN_W_ARCADE_RACE", 1000)
        stats.set_int("MPX_ARN_W_CTF", 1000)
        stats.set_int("MPX_ARN_W_TAG_TEAM", 1000)
        stats.set_int("MPX_ARN_W_DESTR_DERBY", 1000)
        stats.set_int("MPX_ARN_W_CARNAGE", 1000)
        stats.set_int("MPX_ARN_W_MONSTER_JAM", 1000)
        stats.set_int("MPX_ARN_W_GAMES_MASTERS", 1000)
        stats.set_int("MPX_ARN_L_PASS_THE_BOMB", 100)
        stats.set_int("MPX_ARN_L_DETONATION", 100)
        stats.set_int("MPX_ARN_L_ARCADE_RACE", 100)
        stats.set_int("MPX_ARN_L_CTF", 100)
        stats.set_int("MPX_ARN_L_TAG_TEAM", 200)
        stats.set_int("MPX_ARN_L_DESTR_DERBY", 100)
        stats.set_int("MPX_ARN_L_CARNAGE", 100)
        stats.set_int("MPX_ARN_L_MONSTER_JAM", 1005)
        stats.set_int("MPX_ARN_L_GAMES_MASTERS", 100)
        stats.set_int("MPX_ARN_VEH_MONSTER3", 90000)
        stats.set_int("MPX_ARN_VEH_MONSTER4", 500)
        stats.set_int("MPX_ARN_VEH_MONSTER5", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS2", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS3", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER2", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER3", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN4", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN5", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN6", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS2", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS3", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB2", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB3", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR4", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR5", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR6", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER2", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER3", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER4", 500)
        stats.set_int("MPX_ARN_VEH_ISSI4", 500)
        stats.set_int("MPX_ARN_VEH_ISSI5", 500)
        stats.set_int("MPX_ARN_VEH_ISSI6", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR2", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR3", 500)
        stats.set_int("MPX_ARN_VEH_ZR380", 500)
        stats.set_int("MPX_ARN_VEH_ZR3802", 500)
        stats.set_int("MPX_ARN_VEH_ZR3803", 500)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE", 500)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE2", 400)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE3", 400)
        stats.set_int("MPX_ARN_SPECTATOR_DRONE", 60)
        stats.set_int("MPX_ARN_SPECTATOR_CAMS", 60)
        stats.set_int("MPX_ARN_SMOKE", 50)
        stats.set_int("MPX_ARN_DRINK", 65)
        stats.set_int("MPX_ARN_SPEC_BOX_TIME_MS", 10800000)
        stats.set_int("MPX_ARN_W_THEME_SCIFI", 10)
        stats.set_int("MPX_ARN_W_THEME_APOC", 10)
        stats.set_int("MPX_ARN_W_THEME_CONS", 10)
        notify.info("Script - All Arena War Unlocks Only", "Stats updated!")
        log.info(cls .. lual .. "All Arena War Unlocks Only: Stats updated!")
    else
        notify.info("Script - All Arena War Unlocks Only", "Edit Arena War Stats Disabled.")
        log.info(cls .. lual .. "All Arena War Unlocks Only: Edit Arena War Stats Disabled.")
        return
    end
end)
