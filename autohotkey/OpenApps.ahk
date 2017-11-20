#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#k::
   Run, https://keep.google.com
Return

#c::
   Run, https://drive.google.com/drive/u/1/my-drive
Return

#n::  ; Open Notepad++
Run, Notepad++.exe
WinWait, ahk_exe Notepad++.exe
Send ^n
Return

^!t::
	Run, C:\Program Files\Git\git-bash.exe
Return

F3::  ; Edit a file with Notepad++
Send +{F10}
Send n{enter}
Return

#q::
Send +{F10}
Return