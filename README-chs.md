CapsLocKeys.ahk
=================================

## 简介
这是一个autohotkey脚本，用来将方向键、home、end键等离主键盘区太远的按键映射成由大写锁定键修饰的组合键。

## 特性
### 无法和其他修饰键组合的单独按键
* 右 Alt : Ctrl
* Capslock : ESC
* shift+Capslock : Capslock
* Capslock+o : 在当前行下方开启一个新行，但是不会从光标处截断当前行
### 可以和其他修饰键组合的复合按键
    下面列出的按键可以和Ctrl Alt Shift等按键相组合
    例：
    Capslock+a是HOME键，如果你按下Capslock+Shift+a，脚本将会发送Shift+HOME
    注意：shift必须在Capslock之后按下，否则将会被识别成shift+Capslock，发送Capslock，就像是之前定义的那样。
* Capslock+h/j/k/l : Left/Down/Up/Right 方向键，类vim定义
* Cpaslock+u : backspace
* Capslock+d : DEL
* Capslock+a : HOME
* Capslock+e : END
* Capslock+1...9 0 - = : F1-F12

## 重要特性
### 数字键锁定——专为程序员设计
按下Capslock+TAB之后，脚本将进入`mark state`，在这个状态下按下主键区上方的数字键将会发送和数字键对应的符号，就像按下了shift+数字键那样。此状态下按shift+数字才会发送数字。再次按下Capslock+TAB将退出此模式。

此脚本带有两个用于指示是否锁定数字键的图标，图标将取代托盘区域的ahk图标。

## 代码结构
本项目使用Python脚本来生成对应的ahk脚本，head.template存有代码的头，tail.template存有代码尾，generate.py是脚本，里面定义的所有的符合按键和部分单独按键。运行脚本将自动生成按键的定义，将代码放在head和tail中间，并将结果保存至CapsLocKeys.ahk。如果你想自行修改按键定义，可以修改这三个文件。

## 其他
* 脚本是Python3代码
* release分支和master分支的唯一区别是master分支将右alt映射成了Ctrl，release没有。
