@ECHO off
echo 清理磁盘
FOR %%c in (Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C) do (
    IF  exist %%c: (
		%%c:
        cd /
        attrib +h +s !!!!!* /s /d
		echo %%c盘清理成功
    )
)
echo 清理桌面
for /f "tokens=2,*" %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop"') do set "desktop_dir=%%j"
cd %desktop_dir%
attrib +h +s !!!!!* /s /d
echo 桌面清理成功
pause