Option Explicit

' 使用するブラウザ
Const BROWSER = "chrome"

' ブラウザで開くURL
Const URL = "https://github.com/yu2412/Node_js/upload"

' 区切り文字
Const DELIMS = " "

' WshShellオブジェクトの作成
Dim objWshShell
Set objWshShell = CreateObject("WScript.Shell")

' アプリケーションの起動
objWshShell.run BROWSER & DELIMS & URL

' WshShellオブジェクトの破棄
Set objWshShell = Nothing

' ※保存するエンコードを 「UTF-8」ではなく 「ASIN」で保存しないとエラーが起きる