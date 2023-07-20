; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT or later
; Author:         Ethan
;

a::
    if accent=two
        Send,á
    else if accent=four
        Send,à
    else if accent=three
        Send,ǎ
    else if accent=five
        Send,ä
    else if accent=one
        Send,ā
    Gosub,TurnAccentsOff
Return

e::
    if accent=two
        Send,é
    else if accent=four
        Send,è
    else if accent=three
        Send,ě
    else if accent=five
        Send,ë
    else if accent=one
        Send,ē
    Gosub,TurnAccentsOff
Return

i::
    if accent=two
        Send,í
    else if accent=four
        Send,ì
    else if accent=three
        Send,ǐ
    else if accent=five
        Send,ï
    else if accent=one
        Send,ī
    Gosub,TurnAccentsOff
Return

o::
    if accent=two
        Send,ó
    else if accent=four
        Send,ò
    else if accent=three
        Send,ǒ
    else if accent=five
        Send,ö
    else if accent=one
        Send,ō
    Gosub,TurnAccentsOff
Return

u::
    if accent=two
        Send,ú
    else if accent=four
        Send,ù
    else if accent=three
        Send,ǔ
    else if accent=five
        Send,ü
    else if accent=one
        Send,ū
    Gosub,TurnAccentsOff
Return

TurnAccentsOff:
    Hotkey,a,off
    Hotkey,e,off
    Hotkey,i,off
    Hotkey,o,off
    Hotkey,u,off
Return

TurnAccentsOn:
    Hotkey,a,on
    Hotkey,e,on
    Hotkey,i,on
    Hotkey,o,on
    Hotkey,u,on
Return

!e::
    accent=two
    Gosub,TurnAccentsOn
Return

!h::
    accent=four
    Gosub,TurnAccentsOn
Return

!o::
    accent=three
    Gosub,TurnAccentsOn
Return

!f::
    accent=five
    Gosub,TurnAccentsOn
Return

!a::
    accent=one
    Gosub,TurnAccentsOn
Return

Gosub,TurnAccentsOff

#IfWinActive ahk_exe Logseq.exe

F3::
F10::
    {
        Send, {LWin Down}
        Sleep, 50
        Send, {Space}
        Sleep, 200
        Send, {LWin Up}
        Return
    }

F4::
    {
        Send, ^+{3}
        Sleep, 300
        Send, {Shift}
        Return
    }

F5::
    {
        Send, ^+{5}
        Sleep, 300
        Send, {Shift}
        Return
    }

    #IfWinActive ahk_exe Anki.exe

        F1::1

        F2::2

        F3::3

        F4::4

        F5::5 