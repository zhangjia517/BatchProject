rem @echo off

set sourcePath="F:\111"
set targetPath="G:\111"

rd /S /Q %targetPath%\haha
xcopy /E %sourcePath% %targetPath%

pause