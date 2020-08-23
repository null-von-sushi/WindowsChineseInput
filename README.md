# WindowsChineseInput
Collection of things to fix Chinese Input on Windows (10).
This is meant for when trying to input Traditional Chinese using Pinyin.

## Contents:
 - [Fix layout for pinyin](https://github.com/null-von-sushi/WindowsChineseInput/blob/master/README.md#1-fix-keyboard-layout-for-pinyin)
 - [Add correct quotation marks](https://github.com/null-von-sushi/WindowsChineseInput#2-add-correct-quotes-he-wrote-hello-world)
 - [Cosmetic changes](https://github.com/null-von-sushi/WindowsChineseInput#2-add-correct-quotes-he-wrote-hello-world)

## 1) Fix keyboard layout for Pinyin:
([Credit to this website for finding the trick to switch the layout](http://xahlee.info/comp/Chinese_input_with_Dvorak.html)) 
 
 - 'regedit' as admin, go to `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\`, and find your normal layout. For example, UK is at `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000809` and the `Layout File` is `KBDUK.DLL`. Make a note of this DLL file.
 - Change the DLL file for Chinese at `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000404`. It is also recommended to change it for Simplified Chinese, just in case (`Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000804`).
 - Restart or log out and back in.
 - Now open notepad.exe and switch to chinese input, input should now use your chosen region instead of US/American.
 
## 2) Add correct quotes （`He wrote「 Hello World」`）:
_This will require autohotkey in some form._
 
There is a script available at `/QuotationMarks/ZH.ahk` in this repository. If you have autohotkey installed and registered for .ahk files, you can download the file to `shell:startup` to make it run on Windows logon.
This will let you type the correct quotes for traditional chinese by pressing `Alt+[` and `Alt+]` respectively.
 
## 3) Cosmetic changes (Rename `Chinese (Simplified, China)` to `Chinese (Pinyin)`):
_This is purely cosmetic. This will rename the name of the keyboard layout from "Simplified, China" to simply "Pinyin" when using chinese to more accurately reflect the fact that pinyin can be used anywhere people want and is not restricted to simplified characters._
 
The long term effects are not tested, but there have been no sideeffects found by using this. It is recomended you manually change the values using regedit, and make a backup of your current values first. Nevertheless, the original values I had have been provided for reference.
 - To apply, [take a look at the registry values described in /Cosmetic/Pinyin_Neutral.reg of this repository.](https://github.com/null-von-sushi/WindowsChineseInput/blob/master/Cosmetic/Pinyin_Neutral.reg)
 - The aforementioned "original values are found at [/Cosmetic/Pinyin_Original.reg in this repository.](https://github.com/null-von-sushi/WindowsChineseInput/blob/master/Cosmetic/Pinyin_Original.reg)"
