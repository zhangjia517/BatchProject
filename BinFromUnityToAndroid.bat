rem @echo off

set sourcePath=G:\WorkProject\V160308\Unity\GoogleAndroidProject\Game\assets\bin
set targetPath=G:\WorkProject\V160308\Android_Branch_0321\main\assets\bin

rd /S /Q %targetPath%
md %targetPath%
xcopy /Y /E %sourcePath% %targetPath%

pause