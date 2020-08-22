# WindowsChineseInput
Collection of things to fix Chinese Input on Windows (10).
This is meant for when trying to input Traditional Chinese using Pinyin.

## Contents:
 - [Fix layout for pinyin](https://github.com/null-von-sushi/WindowsChineseInput/blob/master/README.md#1-fix-keyboard-layout-for-pinyin)
 - [Add correct quotation marks](https://github.com/null-von-sushi/WindowsChineseInput#2-add-correct-quotes-he-wrote-hello-world)

## 1) Fix keyboard layout for Pinyin:
([Credit to this website for finding the trick to switch the layout](http://xahlee.info/comp/Chinese_input_with_Dvorak.html)) 
 
 - 'regedit' as admin, go to `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\`, and find your normal layout. For example, UK is at `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000809` and the `Layout File` is `KBDUK.DLL`. Make a note of this DLL file.
 - Change the DLL file for Chinese at `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000404`. It is also recommended to change it for Simplified Chinese, just in case (`Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000804`).
 - Restart or log out and back in.
 - Now open notepad.exe and switch to chinese input, input should now use your chosen region instead of US/American.
 
## 2) Add correct quotes （`He wrote「 Hello World」`）:
This will require autohotkey in some form.

