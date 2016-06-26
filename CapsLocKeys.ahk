; 全局变量;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
NumsLineLock := ""              ;数字锁
IconNum := A_ScriptDir . "\number.ico" ;状态图标的路径
IconMark := A_ScriptDir . "\mark.ico"
;工具栏图标，用于指示NumsLineLock的状态
Menu, Tray, Icon, %IconNum%, , 1
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

RAlt::Ctrl  ;右Alt作为Ctrl
; CapsLock::ESC    ;大写锁定作为ESC
+CapsLock::CapsLock  ;shift+capslock作为大写锁定

; capslock的详细设定：单独按下时是ESC
CapsLock::
CapsLock2:=CapsLock:=1
KeyWait, CapsLock
if CapsLock2
  SendInput, {Esc}
CapsLock2:=CapsLock:=""
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Capslock的组合键;;;;;;;;;;;;;;;;;;;;;;;;;;
#If CapsLock

a::
SendInput,{Home}
CapsLock2:=""
Return
e::
SendInput,{End}
CapsLock2:=""
Return
u::
SendInput,{Backspace}
CapsLock2:=""
Return
d::
SendInput,{DEL}
CapsLock2:=""
Return
h::
SendInput,{Left}
CapsLock2:=""
Return
j::
SendInput,{Down}
CapsLock2:=""
Return
k::
SendInput,{Up}
CapsLock2:=""
Return
l::
SendInput,{Right}
CapsLock2:=""
Return
o::
SendInput,{End}
SendInput,{Enter}
CapsLock2:=""
Return

; capslock+TAB 作为数字键绑定，按下之后可以切换状态，之后直接输入数字将是数字上方的符号
; shift+数字是输入数字
TAB::
if (NumsLineLock=1)
{
  NumsLineLock:=""
  Menu, Tray, Icon, %IconNum%, , 1
}
else
{
  NumsLineLock:=1
  Menu, Tray, Icon, %IconMark%, , 1
}
CapsLock2:=""
return
#If

#if NumsLineLock
0::SendInput {)}
1::SendInput {!}
2::SendInput {@}
3::SendInput {+}
4::SendInput {$}
5::SendInput {`%}
6::SendInput {^}
7::SendInput {&}
8::SendInput {*}
9::SendInput {(}
+0::SendInput {0}
+1::SendInput {1}
+2::SendInput {2}
+3::SendInput {3}
+4::SendInput {4}
+5::SendInput {5}
+6::SendInput {6}
+7::SendInput {7}
+8::SendInput {8}
+9::SendInput {9}
#If
