Option Explicit

' 名前付き引数の定義
Const vbHide = 0
Const vbNormalFocus = 1
Const vbMinimizedFocus = 2
Const vbMaximizedFocus = 3
Const vbNormalNoFocus = 4
Const vbMinimizedNoFocus = 6

' WshShellオブジェクトの作成
Dim objWshShell
Set objWshShell = CreateObject("WScript.Shell")

' アプリケーションの起動
objWshShell.Run "C:\Windows\system32\notepad.exe", vbNormalFocus, False

' WshShellオブジェクトの破棄
Set objWshShell = Nothing