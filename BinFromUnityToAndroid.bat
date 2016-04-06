rem @echo off

set sourcePath=F:\111\haha
set targetPath=G:\111\haha

rd /S /Q %targetPath%
md %targetPath%
xcopy /Y /E %sourcePath% %targetPath%

pause