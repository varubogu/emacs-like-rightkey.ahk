; Register applications to ignore (use windows spy to get their names)
set_ignore_applications() {
  GroupAdd "IgnoreApplications", "ahk_class CASCADIA_HOSTING_WINDOW_CLASS" ; Windows Terminal
}

; Multi-processing prohibited
;#SingleInstance, Force

; Do not display lines of executed scripts
ListLines 0

; Minimize control delays
SetControlDelay 0
; Minimize keystroke latency
SetKeyDelay -1
; Minimize delays in window operations
SetWinDelay 0
; Set the key sending mode to Input
SendMode "Input"

; Call up the settings for ignored applications
set_ignore_applications()

#UseHook

; Set toggle key "<ctrl>F1" for pause
#SuspendExempt
>^F1::Suspend
#SuspendExempt False

; Enable hotkeys only when the ignored application is not active
#HotIf not WinActive("ahk_group IgnoreApplications")



; ###########################
; # cursor
; ###########################

; <r-ctrl>b    # move cursor backward
>^b:: Send "{Left}"

; <r-ctrl>f    # move cursor forward
>^f:: Send "{Right}"

; <r-ctrl>p    # move cursor up
>^p:: Send "{Up}"

; <r-ctrl>n    # move cursor down
>^n:: Send "{Down}"

; <r-alt>m    # to first non-blank character
>!m:: Send "{Home}"

; <r-ctrl>a    # move cursor beginning of current line
>^a:: Send "{Home}{Home}"

; <r-ctrl>e    # move cursor end of current line
>^e:: Send "{End}"

; <r-alt>b    # move cursor one word backward
>!b:: Send "^{Left}"

; <r-alt>f    # move cursor one word forward
>!f:: Send "^{Right}"

; <r-alt>v    # page up
>!v:: Send "{PgUp}"

; <r-ctrl>v    # page down
>^v:: Send "{PgDn}"

; <r-alt>    # start of file
>!,:: Send "^{Home}"

; <r-ctrl>.    # end of file
>!.:: Send "^{End}"


; ###########################
; # select
; ###########################

; <shift><r-ctrl>b    # select and move cursor backward
+>^b::Send "+{Left}"

; <shift><r-ctrl>f    # select and move cursor forward
+>^f:: Send "+{Right}"

; <shift><r-ctrl>p    # select and move cursor up
+>^p:: Send "+{Up}"

; <shift><r-ctrl>n    # select and move cursor down
+>^n:: Send "+{Down}"

; <shift><r-alt>m    # select and first non-blank character
+>!m:: Send "+{Home}"

; <shift><r-ctrl>a    # select and move cursor beginning of current line
+>^a:: Send "+{Home}+{Home}"

; <shift><r-ctrl>e    # select and move cursor end of current line
+>^e:: Send "+{End}"

; <shift><r-alt>b    # select and move cursor one word backward
+>!b:: Send "^+{Left}"

; <shift><r-alt>f    # select and move cursor one word forward
+>!f:: Send "^+{Right}"

; <r-alt><shift>v    # select and page up
>!+v:: Send "+{PgUp}"

; <r-ctrl><shift>v    # select and page down
>^+v:: Send "+{PgDn}"

; <r-alt><shift>,    # select and start of file
>!+,:: Send "^+{Home}"

; <r-ctrl><shift>.    # select and end of file
>!+.:: Send "^+{End}"

; <r-ctrl>\    # select all
>^\:: Send "^a"


; ###########################
; # new line
; ###########################

; <r-ctrl>m    # new line(enter)
>^m:: Send "{Enter}"

; <r-ctrl>o    # new line(enter) (hold cursor position)
>^o:: Send "{Enter}{Up}{End}"

; ###########################
; # cut, copy, paste
; ###########################

; <r-ctrl>w    # cut
>^w:: Send "^x"

; <r-alt>w    # copy
>!w:: Send "^c"

; <r-ctrl>y    # paste
>^y:: Send "^v"

; <r-ctrl>t    # transpose-chars
>^t:: Send "{Esc}+{Left}^x{Right}^v{Left}"

; <r-alt>t    # transpose-words
>!t:: Send "{Esc}^{Right}^+{Left}^x^{Right}^v^{Left}"


; ###########################
; # delete
; ###########################

; <r-ctrl>d    # delete following char
>^d:: Send "{Del}"

; <r-ctrl>h    # delete previous char(Backspace)
>^h:: Send "{BS}"

; <r-ctrl>k    # delete chars from cursor to end of line
>^k::
{
    Send "{ShiftDown}{END}{SHIFTUP}"
    Sleep 50
    Send "{Del}"
    ;Send "^x"
}

; <r-ctrl>u    # delete chars from cursor to beginning of line
>^u::
{
    Send "{ShiftDown}{HOME}{SHIFTUP}"
    Sleep 50
    Send "{Del}"
    ;Send "^x"
}


; ###########################
; # find
; ###########################

; <r-ctrl>r    # find
>^r:: Send "^f"

; <r-ctrl>s    # find
>^s:: Send "^f"


; ###########################
; # escape, undo
; ###########################

; <r-ctrl>g    # escape
>^g:: Send "{Esc}"

; <r-ctrl>]    # escape
>^]:: Send "{Esc}"

; <r-ctrl><shift>\    # undo
>^+\:: Send "^z"

; <r-ctrl>/    # undo
>^/:: Send "^z"
