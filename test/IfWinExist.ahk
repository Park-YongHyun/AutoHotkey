﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DetectHiddenWindows, On

OutputDebug, start
; SetTitleMatchMode, RegEx
; IfWinExist, μTorrent
; {
; 	OutputDebug, ok
; }
IfWinExist, ahk_exe kited.exe
{
	OutputDebug, ok
}
OutputDebug, end