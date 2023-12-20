Option Explicit

' �g�p����u���E�U
Const BROWSER = "chrome"

' �u���E�U�ŊJ��URL
Const URL = "https://developer.mozilla.org/ja/docs/Web/API/Event/preventDefault"

' ��؂蕶��
Const DELIMS = " "

' WshShell�I�u�W�F�N�g�̍쐬
Dim objWshShell
Set objWshShell = CreateObject("WScript.Shell")

' �A�v���P�[�V�����̋N��
objWshShell.run BROWSER & DELIMS & URL

' WshShell�I�u�W�F�N�g�̔j��
Set objWshShell = Nothing

' ���ۑ�����G���R�[�h�� �uUTF-8�v�ł͂Ȃ� �uASIN�v�ŕۑ����Ȃ��ƃG���[���N����`