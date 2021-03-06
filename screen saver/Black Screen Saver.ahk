﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;컴파일 후 확장자 'exe'에서 'scr'로 변경 후 'C:\Windows\System32\'으로 이동

;윈도우10 화면보호기에서 적용 안됨
#SingleInstance Ignore ; 중복 실행 무시
;~ #SingleInstance Force ; 중복 실행 덮어쓰기
;~ #Persistent ; 영구 스크립트 실행 (ExitApp으로만 종료 가능), 단일 인스턴스

;~ MouseMove, 959, 539, 2
BlockInput, MouseMove
gui, +AlwaysOnTop -Caption
gui, color, 000000
gui, show, w%A_ScreenWidth% h%A_ScreenHeight% x0 y0
;~ gui, show, w800 h800 Center

DllCall( "ShowCursor", UInt, 0 ) ; 마우스 포인터 숨기기

;~ Loop
;~ {
	;~ Sleep, 2000
	;~ WinActivate, black screen saver
;~ }

return


LButton::
Esc::
BlockInput, MouseMoveOff
DllCall( "ShowCursor", UInt, 1 )
ExitApp


GuiClose:
BlockInput, MouseMoveOff
DllCall( "ShowCursor", UInt, 1 )
ExitApp