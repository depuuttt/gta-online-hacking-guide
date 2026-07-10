script.run_in_callback(function()
    natives.load_natives()
    local cls = "                                            \r"
    local lual = "\r\27[9C]\27[94m[INFO/LuaScript]\27[m "
    local lual_s = ": \27[92mInitialized successfully\27[m                           "
    local lual_r =
        "\27[m: \27[33mPlease join any freemode session and reload the script\27[m                           "
    local IsOnline = NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and
                         not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
    -- Original TinkerScript By ImagineNothing

    if IsOnline then
        log.info(cls .. lual .. "All LSC Unlocks Only" .. lual_s .. "              \r\n")
    else
        notify.info("Script - All LSC Unlocks Only", "Please join any freemode session and reload the script.")
        log.info(cls .. lual .. "All LSC Unlocks Only" .. lual_r .. "\n")
        return
    end

    for i = 1, 7 do
        stats.set_int("MPX_CHAR_FM_CARMOD_" .. i .. "_UNLCK", -1)
    end
    for i = 0, 20 do
        stats.set_int("MPPLY_XMASLIVERIES" .. i, -1)
    end

    stats.set_int("MPX_NUMBER_TURBO_STARTS_IN_RACE", 50)
    stats.set_int("MPX_NUMBER_SLIPSTREAMS_IN_RACE", 100)
    stats.set_int("MPX_USJS_FOUND", 50)
    stats.set_int("MPX_USJS_COMPLETED", 50)
    stats.set_int("MPX_RACES_WON", 50)
    stats.set_int("MPPLY_TOTAL_RACES_WON", 50)
    stats.set_int("MPX_AWD_FMRALLYWONDRIVE", 1)
    stats.set_int("MPX_AWD_FMRALLYWONNAV", 1)
    stats.set_int("MPX_AWD_FMWINSEARACE", 1)
    stats.set_int("MPX_AWD_FMWINAIRRACE", 1)
    stats.set_int("MPX_AWD_FM_RACES_FASTEST_LAP", 50)
    stats.set_int("MPX_AWD_WIN_CAPTURES", 50)
    stats.set_int("MPX_AWD_DROPOFF_CAP_PACKAGES", 100)
    stats.set_int("MPX_AWD_KILL_CARRIER_CAPTURE", 100)
    stats.set_int("MPX_AWD_FINISH_HEISTS", 50)
    stats.set_int("MPX_AWD_FINISH_HEIST_SETUP_JOB", 50)
    stats.set_int("MPX_AWD_NIGHTVISION_KILLS", 100)
    stats.set_int("MPX_AWD_WIN_LAST_TEAM_STANDINGS", 50)
    stats.set_int("MPX_AWD_ONLY_PLAYER_ALIVE_LTS", 50)
    stats.set_int("MPPLY_XMAS22CPAINT0", -1)
    stats.set_int("MPPLY_XMAS22CPAINT1", -1)
    stats.set_int("MPPLY_SUM23WHEELCPAINT0", -1)
    stats.set_int("MPPLY_SUM23WHEELCPAINT1", -1)
    notify.success("Script - All LSC Unlocks Only", "Success! All LSC Colors unlocked.")
    log.info(cls .. lual .. "All LSCM Unlocks Only: All LSC Colors Unlocked.")
end)
