Option Explicit

' ���O�t�������̒�`
Const vbHide = 0
Const vbNormalFocus = 1
Const vbMinimizedFocus = 2
Const vbMaximizedFocus = 3
Const vbNormalNoFocus = 4
Const vbMinimizedNoFocus = 6

' WshShell�I�u�W�F�N�g�̍쐬
Dim objWshShell
Set objWshShell = CreateObject("WScript.Shell")

' �A�v���P�[�V�����̋N��
objWshShell.Run "C:\Windows\system32\notepad.exe", vbNormalFocus, False

' WshShell�I�u�W�F�N�g�̔j��
Set objWshShell = Nothing