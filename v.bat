@echo off
setlocal EnableDelayedExpansion

:: 读取剪贴板中的文本内容
for /f "tokens=*" %%a in ('powershell -command "Get-Clipboard"') do (
    set clipboard_text=%%a
)

:: 将文本内容写入到文件中
echo %clipboard_text% > ssss

echo 内容已写入到 ssss 文件中。
git add .
git commit -m ''
git push
pause