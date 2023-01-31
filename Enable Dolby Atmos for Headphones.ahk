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
Sleep, 40

; Opens Properties
Control, Check, , Button3, Sound

; Navigates to Spatial Sound Tab
Sleep, 40
Send, {LShift Down}
Sleep, 40
Send, {Tab}
Sleep, 40
Send, {LShift Up}
Sleep, 40
Send, {Right 3}
Sleep, 40
Send, {Tab}

; Selects Dolby Atmos from the drop down - Sleep time can be adjusted to allow sufficient time for the string to be selected,
Sleep, 500
Control, ChooseString, Dolby Atmos for Headphones, ComboBox1, A
Sleep, 500

; Exit Properties
Control, Check, , Button3, A

; Exit Audio Control Panel
Sleep, 40
Control, Check, , Button4, Sound


Return

