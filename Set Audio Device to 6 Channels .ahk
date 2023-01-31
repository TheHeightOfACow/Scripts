#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


Macro1:

; Opens Windows Audio Control Panel
Run, control.exe /name Microsoft.Sound
WinWaitActive, Sound, , 300

; Selects Audio Device
Send, {Down 7}  ; <-- Edit this value to match how many presses of the cursor down are required to select the desired audio device as seen in the Audio Control Panel. Accessed by going to Settings > System > Sound > More Sound Settings
Sleep, 100

; Opens Speaker Configuration
Control, Check, , Button1, Sound
Sleep, 30
WinWaitActive, Speaker Setup, , 300
Sleep, 333

; Selects 5.1 and clicks through Next
Control, ChooseString, 5.1, ListBox1, Speaker Setup
Sleep, 100
Control, Check, , Button1, Speaker Setup
Sleep, 100
Control, Check, , Button1, Speaker Setup
Sleep, 100
Control, Check, , Button1, Speaker Setup
Sleep, 100
Control, Check, , Button2, Speaker Setup
Sleep, 100

; Exits Audio Control Panel
Control, Check, , Button4, Sound
Return

