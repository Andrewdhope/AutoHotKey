; Modifier keys -- ! Alt, ^ Ctrl, + Shift, # Windows. & to combine two keys (requires space between e.g. 3 & 4::)
; TODO: Learn Hotstrings.

; Reload this script
#s::Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
Return

;AHK reference guide
#+/::Run https://autohotkey.com/docs/AutoHotkey.htm

; launch sites -- all web hotkeys use Windows+Shift
#+r::Run https://reddit.com/
#+t::Run https://twitter.com/

; Use PrtSc to launch Snipping Tool
PrintScreen::
Run C:\Windows\explorer.exe C:\Windows\system32\SnippingTool.exe
WinWaitActive, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
Send !n
Sleep 50
Send r
Return

; Unmute speakers and play wav file.
#1::
Send {Volume_Up 1}
Send {Volume_Down 1}
path := "C:\Users\ahope\Desktop\_MyFiles\pics\audio\Celebration.wav"
Run C:\Windows\explorer.exe %path%
Return


; [[[ HOTSTRINGS HERE!!! GEEEEEET YA HOTSTRINGS!!! ]]]


; /// SCRATCH WORK BELOW ////

; Present working directory message box
;#ENTER::
;SetWorkingDir,%A_ScriptDir%
;MsgBox A_WorkingDir=%A_WorkingDir%
;Return

; IfWinExist example (also IfWinActive)
;^!n::
;IfWinExist Untitled - Notepad
;	WinActivate
;else
;	Run Notepad
;return

;InputBox Example
;#`::
;InputBox, OutputVar, Question 1, What is your first name?
;if (OutputVar="Bill")
;   MsgBox, That's an awesome name, %OutputVar%.
;
;InputBox, OutputVar2, Question 2, Do you like AutoHotkey?
;if (OutputVar2="yes")
;   MsgBox, Thank you for answering %OutputVar2%`, %OutputVar%! We will become great friends.
;else
;   MsgBox, %OutputVar%`, That makes me sad.