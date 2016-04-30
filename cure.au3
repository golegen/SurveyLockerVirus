

Opt("TrayIconHide", 1)
Opt("TrayAutoPause", 0)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\system","DisableTaskMgr","REG_DWORD",0)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\system", "DisableRegistryTools","REG_DWORD",0)
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\system","DisableTaskMgr","REG_DWORD",0)
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\system", "DisableRegistryTools","REG_DWORD",0)
RegDelete("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "MS")
RegDelete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "MS")



ProcessClose("lockervb.exe")
ProcessClose("lockermain2.exe")



Run("cmd", "", @SW_HIDE)

While ProcessExists("cmd.exe") = 0
   Sleep(1)
   ConsoleWrite("cmd bekliyor")
WEnd
Sleep(1000)

if FileExists(@windowsdir & "\explorer.exe") = True Then
ControlSend("[CLASS:ConsoleWindowClass]","","","start " & @WindowsDir & "\explorer.exe"&"{ENTER}")
ElseIf FileExists(@windowsdir & "\system32\explorer.exe") = True Then
ControlSend("[CLASS:ConsoleWindowClass]","","","start " & @WindowsDir & "\system32\explorer.exe"&"{ENTER}")
ElseIf FileExists(@WindowsDir & "\syswow64\explorer.exe") = True Then
ControlSend("[CLASS:ConsoleWindowClass]","","","start " & @WindowsDir & "\syswow64\explorer.exe"&"{ENTER}")
EndIf

While ProcessExists("explorer.exe") = 0
Sleep(1)
ConsoleWrite("explorer bekliyor")
   WEnd

While ProcessExists("cmd.exe")
ProcessClose("cmd.exe")
WEnd

While ProcessExists("conhost.exe")
ProcessClose("conhost.exe")
WEnd

FileDelete(@AppDataDir & "\lockermain2.exe")
FileDelete(@AppDataDir & "\lockermain.exe")
FileDelete(@AppDataDir & "\lockervb.exe")
FileDelete(@AppDataDir & "\cure.exe")
FileDelete(@AppDataDir & "\Akagi64.exe")
FileDelete(@AppDataDir & "\Akagi32.exe")
FileDelete(@StartupDir & "\lockermain2.exe")


OnAutoItExitRegister("selfdestroy")
Func selfdestroy()
   Run(@SystemDir & '\cmd.exe /C del /F /Q "' & @ScriptFullPath & '"', @TempDir, @SW_HIDE)
   EndFunc