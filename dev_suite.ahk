
; *********************** Header - some configuration  ***********************
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors. (disabled by default)
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
setTitleMatchMode, 2 ; set title match mode to "contains"

;********macros********

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

F2::
    {
        SendInput, !x
        Sleep, 250
        Send, metric
        Sleep, 75
        Send, {Enter}
        Sleep, 300
        if accent=one
        {
            Sleep, 200
            ; Send, medication
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, prozac
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, .5
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Tab}
            ; Sleep, 75
            ; Send, {Enter}
            ; Sleep, 500
            ; Send, !x
            ; Sleep, 250
            ; Send, metric
            ; Sleep, 75
            ; Send, {Enter}
            ; Sleep, 500
            Send, medication
            Sleep, 75
            Send, {Tab}
            Sleep, 200
            Send, supplements
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, 1
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Enter}
        } else if accent=two
        {
            Sleep, 200
            Send, medication
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, ritalin
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Input, UserInput, V, {Enter}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Enter}
        } else if accent=three
        {
            Sleep, 200
            Send, path
            Sleep, 75
            Send, {Tab}
            Sleep, 250
            Input, UserInput, V, {Enter}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 250
            Input, UserInput, V, {Enter}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Enter}
        } else if accent=four
        {
            Sleep, 200
            Send, meditate
            Sleep, 75
            Send, {Tab}
        } else if accent=five
        {
            Sleep, 200
            Send, ECHO
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 250
            Input, UserInput, V, {Enter}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Tab}
            Sleep, 75
            Send, {Enter}
        }
        Gosub,TurnAccentsOff
        Return

        TurnAccentsOff:
            Hotkey, F2, off
        Return

        TurnAccentsOn:
            Hotkey, F2, on
        Return

        !m::
            accent=one
            Gosub,TurnAccentsOn
        Return

        !l::
            accent=two
            Gosub,TurnAccentsOn
        Return

        !b::
            accent=three
            Gosub,TurnAccentsOn
        Return

        !v::
            accent=four
            Gosub,TurnAccentsOn
        Return

        !r::
            accent=five
            Gosub,TurnAccentsOn
        Return
    }

    ;current time  
    F1::
        {
            Send, /
            Sleep, 250
            Send, current time
            Sleep, 250
            Send, {Enter}
            Sleep, 75
            Send, {Home}
            Sleep, 75
            Send, *
            Sleep, 75
            Send, {End}
            Sleep, 75
            Send, *
            Sleep, 75
            Send, {Enter}
            Sleep, 125
            Send, {Tab}
            Return
        }

        ;current date and time
    ^F1::
        {
            Send, /
            Sleep, 200
            Send, Today
            Sleep, 200
            Send, {Enter}
            Sleep, 75
            Send, {Space}
            Sleep, 50
            Send, /
            Sleep, 200
            Send, current time
            Sleep, 300
            Send, {Enter}
            Sleep, 125
            Send, {Home}
            Sleep, 75
            Send, *
            Sleep, 75
            Send, {End}
            Sleep, 75
            Send, *
            Sleep, 75
            Send, {Enter}
            Sleep, 125
            Send, {Tab}
            Return
        }

        ;current dt
    +^F1::
        {
            SendInput %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%
            Sleep, 75
            Send, {Home}
            Sleep, 75
            Send, *
            Sleep, 75
            Send, {End}
            Sleep, 75
            Send, *
            Sleep, 75
            Send, {Enter}
            Sleep, 125
            Send, {Tab}
            Return
        }

        ;copy all
    !a::
        Send, ^a
        Send ^c
        Send, {Esc}
    Return

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

    ;hypertext
    ::?):: 
        { 
            Send, [
            Send, ]
            Send, (
            Send, )
            Sleep, 200
            Send, {End}
            Sleep, 25
            Send, {Left}
            Sleep, 15
            Send, {Left}
            Sleep, 15
            Send, {Left}
            Return
        } 

        ;new_window
    F7:: 
        { 
            Send, ^{Space}
            Sleep, 350
            Send, {1}
            Sleep, 400
            Send, {Enter}
            Sleep, 1250
            Send, ^{v}
            Sleep, 750
            Send,{Up}
            Sleep, 50
            Send, ^{Home}
            Sleep, 50
            Send, {End}
            Sleep, 50
            Send, {Space}
            Return
        } 

    F9:: 
        { 
            Send, ^{v}
            Sleep, 500
            Send, ^{Home}
            Sleep, 50
            Send, {End}
            Sleep, 50
            Send, {Space}
            Return
        } 

        ;end_of_day
    F10:: 
        { 
            Send, {Space}
            Sleep, 50
            Send, /
            Sleep, 500
            Send, deadline
            Sleep, 400
            Send, {Enter}
            Sleep, 250
            Send, {Enter}
            Sleep, 300
            Send, ^{Home}
            Sleep, 50
            Send, {Down}
            Sleep, 50
            Send, {End}
            Sleep, 50
            Send, {Left}
            Sleep, 50
            Send, {Space}
            Sleep, 50
            Send, 23:59
            Sleep, 50
            Send, {Esc}
            Return
        } 

        ; end of specific day
    ^F10:: 
        { 
            Send, ^{Home}
            Sleep, 50
            Send, {Down}
            Sleep, 50
            Send, {End}
            Sleep, 50
            Send, {Left}
            Sleep, 50
            Send, {Space}
            Sleep, 50
            Send, 23:59
            Sleep, 50
            Send, {Esc}
            Return
        } 

        ;priority2
    F6:: 
        { 
            Send, {/}
            Sleep, 50
            Send, {b}
            Sleep, 50
            Send, {b}
            Sleep, 50
            Send, {Enter}
            Sleep, 300
            Send, {Down}
            Sleep, 100
            Send, {Left}
            Return
        } 

        ; finish task
    F5::
        {

        }