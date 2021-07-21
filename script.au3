#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         D_Pain

 Script Function:
	This script lets you push to talk like how it would work on Discord.

#ce ----------------------------------------------------------------------------

#include <Misc.au3>

Global $version = "1.0.0", $playSound = True, $debounce = False, $key = "C0" ; Backtick
; Key's hexcode can be found here: https://www.autoitscript.com/autoit3/docs/libfunctions/_IsPressed.htm

Func tool_tip($msg = "", $timeout = 1000)
    ToolTip($msg, 0, 0)
    AdlibRegister(tool_tip_stop, $timeout)
EndFunc

Func tool_tip_stop()
    ToolTip("")
    AdlibUnRegister(tool_tip_stop)
EndFunc

main()

Func main()
	; Initially show tooltip for 5 seconds.
	tool_tip("Zoom Push to Talk Activated!", 5000)
	
	; Run the task.
	While 1
		task()
	WEnd
EndFunc

Func task()
    If _IsPressed($key) Then
        ; Backtick Up
        Send("{SCROLLLOCK}")
        If $playSound Then
            SoundPlay(@ScriptDir & "\rsc\on.mp3", 0)
        EndIf
        $debounce = True
    EndIf

    ; Waits till the hotkey is no longer pressed.
    While _IsPressed($key)
        Sleep(10)
    WEnd
    If $debounce = True Then
        ; Backtick Down
        Send("{SCROLLLOCK}")
        If $playSound Then
            SoundPlay(@ScriptDir & "\rsc\off.mp3", 0)
        EndIf
        $debounce = False
    EndIf
    Sleep(100)
EndFunc
