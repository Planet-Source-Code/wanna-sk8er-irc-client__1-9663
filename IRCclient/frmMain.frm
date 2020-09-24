VERSION 5.00
Begin VB.MDIForm frmMain 
   BackColor       =   &H8000000C&
   Caption         =   "IRC Client"
   ClientHeight    =   7545
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   10335
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuConnect 
         Caption         =   "Connect"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuReConnect 
         Caption         =   "ReConnect"
      End
      Begin VB.Menu mnuDisconnect 
         Caption         =   "Disconnect"
         Shortcut        =   ^D
      End
      Begin VB.Menu hy00 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "Options"
      Begin VB.Menu mnuOption 
         Caption         =   "Options"
      End
      Begin VB.Menu mnuColors 
         Caption         =   "Colors..."
      End
   End
   Begin VB.Menu mnuWindow 
      Caption         =   "Window"
      WindowList      =   -1  'True
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "Help"
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub MDIForm_Load()
    LoadColor
End Sub

Private Sub MDIForm_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Call mnuExit_Click
End Sub

Private Sub mnuColors_Click()
frmColor.SHOW
End Sub

Private Sub mnuExit_Click()
    Disconnect
    End
End Sub

Private Sub mnuHelp_Click()
MsgBox "Sorry no help yet..."
End Sub

Private Sub mnuOption_Click()
    frmOption.SHOW 1
End Sub

