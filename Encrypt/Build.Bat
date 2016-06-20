echo off
@set unity="D:\Program Files (x86)\Unity\Editor\Unity.exe"
@set version=0308
@set u3dProjectFolder=F:\Projects\Unity\%version%
@set androidBinFolder=F:\Projects\Android\%version%\main\assets\bin\Data
@set u3dLogFilePath=%u3dProjectFolder%\Editor.log

rd /s/q %androidBinFolder%
if exist %u3dProjectFolder%\AndroidProject (rmdir /s /q %u3dProjectFolder%\AndroidProject)
%unity%  -batchmode -quit -nographics -executeMethod Batchmode.BuildAndroid -logFile %u3dLogFilePath% -projectPath %u3dProjectFolder%
rmdir /s /q %androidBinFolder%
md %androidBinFolder%
xcopy /y /e %u3dProjectFolder%"\AndroidProject\Game\assets\bin\Data" %androidBinFolder%

pause