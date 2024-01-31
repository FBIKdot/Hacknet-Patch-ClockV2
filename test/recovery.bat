@echo off
set "sourceFolder=test\Hacknet.Backup\"
set "destinationFolder=test\Hacknet\"

REM 删除目标文件夹
rmdir /s /q "%destinationFolder%"

REM 复制源文件夹到目标文件夹
xcopy /s /e "%sourceFolder%" "%destinationFolder%"

echo Done!
