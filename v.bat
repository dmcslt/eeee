@echo off
setlocal EnableDelayedExpansion

:: ��ȡ�������е��ı�����
for /f "tokens=*" %%a in ('powershell -command "Get-Clipboard"') do (
    set clipboard_text=%%a
)

:: ���ı�����д�뵽�ļ���
echo %clipboard_text% > ssss

echo ������д�뵽 ssss �ļ��С�
git add .
git commit -m ''
git push
pause