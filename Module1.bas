Attribute VB_Name = "Module1"
Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
    (ByVal hwnd As Long, ByVal lpszOp As String, _
     ByVal lpszFile As String, ByVal lpszParams As String, _
     ByVal LpszDir As String, ByVal FsShowCmd As Long) _
    As Long

