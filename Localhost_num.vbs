Option Explicit

Dim msg
msg = InputBox("���b�Z�[�W","�^�C�g��������","3000")

Const BROWSER = "chrome"

Dim URL
URL = "http://www.localhost:" & msg


Const DELIMS = " "


Dim objWshShell
Set objWshShell = CreateObject("WScript.Shell")


objWshShell.run BROWSER & DELIMS & URL

 
Set objWshShell = Nothing