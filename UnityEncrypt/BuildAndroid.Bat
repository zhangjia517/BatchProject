echo off
@set unity="D:\Program Files (x86)\Unity\Editor\Unity.exe"
@set dotfuscatorPath="C:\Program Files (x86)\PreEmptive Solutions\Dotfuscator Professional Edition 4.9\dotfuscator.exe"
@set version=lefan
@set u3dProjectFolder=F:\Projects\Unity\%version%
@set androidBinFolder=F:\Projects\Android\%version%\main\assets\bin\Data
@set u3dLogFilePath=%u3dProjectFolder%\Editor.log
@set androidManagedfolder=%androidBinFolder%\Managed

rd /s/q %androidBinFolder%
if exist %u3dProjectFolder%\AndroidProject (rmdir /s /q %u3dProjectFolder%\AndroidProject)
%unity%  -batchmode -quit -nographics -executeMethod Batchmode.BuildAndroid -logFile %u3dLogFilePath% -projectPath %u3dProjectFolder%
rmdir /s /q %androidBinFolder%
md %androidBinFolder%
xcopy /y /e %u3dProjectFolder%"\AndroidProject\Game\assets\bin\Data" %androidBinFolder%
rd /s/q .\CodeProtection\Dotfuscated
xcopy /y %androidManagedfolder% .\CodeProtection
%dotfuscatorPath% /q "F:\Projects\Unity\CodeProtection\release.xml"
copy /y .\CodeProtection\Dotfuscated\Assembly-CSharp.dll %androidManagedfolder%
Encrypt.exe %androidManagedfolder%\Assembly-CSharp.dll