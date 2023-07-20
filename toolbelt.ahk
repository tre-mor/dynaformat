#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;___macros___

;paste
^g::
    SendInput, ^{v}
Return

;fullscreen
+F1::
    Send, {F11}
Return

;date_time_td
F8::
    SendInput %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%
Return

#IfWinActive ahk_exe Logseq.exe

 ;page link
    ^e::
        Send, {Left}
        Sleep, 25
        Send, ^{Right}
        Sleep, 25
        Send, ^+{Left}
        Sleep, 25
        Send, [[
        Send, ^{Right}
    Return

    ;format
    ^i::
        Send, {Left}
        Sleep, 50
        Send, ^{Right}
        Sleep, 50
        Send, ^+{Left}
        Sleep, 50
        Input, Userinput, T0.3, , a,e,i,o,h,
        if (ErrorLevel = "Timeout")
        {
            Sleep, 200
            Send, [[
            Send, ^{Right}
            Return
        }
        if (UserInput = "a") 
        {
            Sleep, 200
            Send, * 
            Sleep, 75
            Send, {Right 2}

        } else if (UserInput = "i")
        {
            Sleep, 200
            Send, ^+{Left}
            Sleep, 200
            Send, [[
            Send, ^{Right}

        } else if (UserInput = "e") 
        {
            Sleep, 200
            Send, ^+{Left}
            Sleep, 200
            Send, ^+{Left}
            Sleep, 200
            Send, [[
            Send, ^{Right}
            Sleep, 200
            Send, ^{Right}
        } else if (UserInput = "o") 
        {
            Sleep, 200
            Send, **
            Sleep, 50
            Send, {Right}
            Sleep, 50
            Send, {Right}
            Sleep, 50
            Send, {Right}
        } else if (UserInput = "h") 
        {
            Sleep, 200
            Send, ``
            Send, {Right}
            Sleep, 75
            Send, {Right}
        }
    Return

    ;protection
    ^w:: 
        Send, w
    Return 
