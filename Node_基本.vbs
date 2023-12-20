Option Explicit

Const BROWSER = "chrome"

Dim URL
URL = "https://prog-8.com/docs/nodejs-new-application"


Const DELIMS = " "


Dim objWshShell
Set objWshShell = CreateObject("WScript.Shell")


objWshShell.run BROWSER & DELIMS & URL

 
Set objWshShell = Nothing