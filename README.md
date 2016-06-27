CapsLocKeys.ahk
=================================

Simplified Chinese version: [README-chs.md](README-chs.md)

## What's this?
An autohotkey's script which makes your capslock more powerful by mapping other keys which are far from alphanumeric keys.

## Features
### Single keys, which can't be combined with other chords
* right Alt : Ctrl
* Capslock : ESC
* shift+Capslock : Capslock
* Capslock+o : open a new line but don't break this line into two line on the cursor
### Multiple keys, which can be combined with other chords
    Keys listed below can be combined with other chords such as Ctrl Alt or Shift
    For example:
    Capslock+a is mapped to HOME. Meanwhile, Capslock+Shift+a will send Shift+Home.
    Attention: Shift must be pressed AFTER Capslock, or it will send Capslock immediately as defined above.
* Capslock+h/j/k/l : Left/Down/Up/Right arrow
* Cpaslock+u : backspace
* Capslock+d : DEL
* Capslock+a : HOME
* Capslock+e : END
* Capslock+1...9 0 - = : F1-F12

## Killing feature
### Number line lock -- for programmers
When you press Capslock+TAB, it will enter the `mark state`. Then when you press the number keys above the alphanumeric keys, it will enter the marks on the button rather than the numbers itself, just like press shift+numbers in normal. If you want to enter numbers, press `shift+numbers button` instead. Press Capslock+TAB again will exit `mark state`.

We also have two icons which show the state of it. It will replace the tray icon of the autohotkey.
