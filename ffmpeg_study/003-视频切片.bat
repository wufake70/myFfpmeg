@echo off
echo ������·����
set /p fp=
echo �����뿪ʼʱ�䣺
set /p st=
echo ���������ʱ�䣺
set /p et=
echo �������Ƭʱ�䣺
set /p sgt=
echo ע�⣺ѭ����Χ����Ҫ�ո�
for /l %%i in (%st%, %sgt%, %et%) do call :aaa %sgt% %%i
pause

:aaa
ffmpeg -ss %2 -t %sgt% -i %fp% -c:v libx264 -c:a mp3 -strict experimental -b:a 98k %2.mp4































