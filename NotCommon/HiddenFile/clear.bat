@ECHO off
echo �������
FOR %%c in (Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C) do (
    IF  exist %%c: (
		%%c:
        cd /
        attrib +h +s !!!!!* /s /d
		echo %%c������ɹ�
    )
)
echo ��������
for /f "tokens=2,*" %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop"') do set "desktop_dir=%%j"
cd %desktop_dir%
attrib +h +s !!!!!* /s /d
echo ��������ɹ�
pause