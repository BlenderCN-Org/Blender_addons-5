Option Explicit
'�iVBScript��'���R�����g�j
'�R�}���h�v�����v�g��ł�VBScript�̎��s��CScript�ɃX�y�[�X��؂�̈���
'�������Ŏ��s����javascript�����s�@�ȍ~��javascript�ɓn��
'�ϐ��̐錾�����Ȃ��ƃG���[�ɂȂ�@����

'�R�}���h���C�������̎擾
Dim oParam
Set oParam = WScript.Arguments
'Photoshop���w��
Dim objApp
Set objApp = CreateObject("Photoshop.Application")

Dim arg_count
arg_count = oParam.Count -1 
'WScript.Echo arg_count

If arg_count = 0 Then
    '�ǉ��̈������Ȃ��ꍇ
    objApp.DoJavaScriptFile oParam(0)
Else
    Dim id
	'������javascript�ɓn�����߂̔z��
    Dim ArgArray()
	ReDim ArgArray(arg_count - 1  )
    '���������X�N���v�g�̃p�X�̂��ߎ�菜��
    For id = 0 To arg_count - 1
        ArgArray(id) = oParam(id + 1)
    Next
    ''�X�N���v�g�̎��s
    objApp.DoJavaScriptFile oParam(0),ArgArray
End If
'Dim script_path = "C:\Users\moonstone\Documents\TempItems\" + oParam(0)
'Dim args(1)
'args(0) = oParam(1)
'objApp.DoJavaScriptFile oParam(0), args

'Python����̃R�}���h���s��
'import subprocess
'subprocess.call("CScript C:/Users/moonstone/Documents/TempItems/tast-vbs.vbs")
'�܂���(�߂�l���\�������)
'print subprocess.check_output("CScript C:/Users/moonstone/Documents/TempItems/tast-vbs.vbs")