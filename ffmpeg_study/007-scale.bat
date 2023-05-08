@echo off
echo 建议在同一文件夹内使用
echo 建议宽高比保持不变
set /p a=请输入图片的路径：
echo 查看图片的参数：
ffprobe -i %a% | more
set /p b=宽度：
set /p c=高度：
ffmpeg -i %a% -vf scale=%b%:%c% 1_%a%


pause