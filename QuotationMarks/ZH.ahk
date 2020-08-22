![::
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
   If (InputLocaleID = "0x8040804")
   {
          Send {「}
          ;MsgBox, %InputLocaleID%
   }
Return

!]::
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
   If (InputLocaleID = "0x8040804")
   {
          Send {」}
          ;MsgBox, %InputLocaleID%
   }
Return