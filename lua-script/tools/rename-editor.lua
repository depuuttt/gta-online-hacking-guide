--------------------------------- Re-Name Editor - CONTROL PANEL ---------------------------------
-- Run the script after the "Input Box" appears
local Preset_Name = "Fox"

local Start_Formatting = "~ws~~r~∑~s~"
local End_Formatting = "~r~∑~ws~"

--[[ Use symbols directly only when renaming outfits; for anything else, use either HTML or Hex codes
 
 			|          Icon          |  Symbol   |  HTML Code  |   Hex Code   |
 			|------------------------|-----------|-------------|--------------|
 			| Rockstar Verified Icon |     ¦     |   &#166;    |   &#xa6;     |
 			| Rockstar Icon          |     ∑     |   &#8721;   |   &#x2211;   |
 			| Lock Icon              |     Ω     |   &#937;    |   &#x3a9;    |
 			| R* Created Icon        |     ‹     |   &#8249;   |   &#x2039;   |
 			| Blank White Icon       |     ›     |   &#8250;   |   &#x203a;   |
 
Colors
~b~ = Blue
~c~ = Grey
~d~ = Dark Blue
~g~ = Green
~m~ = Dark Grey
~o~ = Orange
~p~ = Purple
~q~ = Pink
~r~ = Red
~u~ = Black
~w~ = White
~y~ = Yellow
~ws~ = Wanted Star
~h~ = Bold
~italic~ = Italic
~n~ = New line
~s~ = Reset
 
]]
--------------------------------- Re-Name Editor - CONTROL PANEL ---------------------------------

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

    if IsOnline and MISC.UPDATE_ONSCREEN_KEYBOARD() == 0 then
        log.info(cls .. lual .. "Re-Name Editor" .. lual_s .. "              \r\n")
        log.info(cls .. lual .. "Waiting for custom name/text" .. cls)
        MISC.DISPLAY_ONSCREEN_KEYBOARD(0, "CELL_7000", "", Start_Formatting, Preset_Name, End_Formatting, "", 100)
    elseif IsOnline and MISC.UPDATE_ONSCREEN_KEYBOARD() > 0 then
        notify.info("Script - Re-Name Editor", "Open an \"Input Box\" first.")
        log.info(cls .. lual .. "Re-Name Editor: \27[33mOpen an \"Input Box\" first.\27[m" .. cls .. "\n")
        return
    else
        notify.info("Script - Re-Name Editor", "Please join any freemode session and reload the script.")
        log.info(cls .. lual .. "Re-Name Editor" .. lual_r .. "\n")
        return
    end

    while true do
        local nn = MISC.GET_ONSCREEN_KEYBOARD_RESULT()
        if MISC.UPDATE_ONSCREEN_KEYBOARD() == 1 then
            notify.info("Script - Re-Name Editor", "New name is:\n" .. nn)
            log.info(cls .. lual .. "\27[ARe-Name Editor: \27[32mNew name is:\27[m " .. nn ..
                         "                             \27[B\r                                      " .. cls)
            break
        elseif MISC.UPDATE_ONSCREEN_KEYBOARD() == 2 then
            notify.info("Script - Re-Name Editor", "Logic canceled.")
            log.info(cls .. lual ..
                         "\27[ARe-Name Editor: Logic canceled.                             \27[B\r                                      " ..
                         cls)
            return
        end
        script.yield(0)
    end
end)
