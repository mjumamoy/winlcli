CLS
@echo off
pushd %~dp0
color 17
echo Killing OSK.exe
taskkill /im osk.exe
CLS
echo Welcome to the Windows Localization Command Line Interface Tool
echo Written for Franklin HS @ Elk Grove Unified School District
echo.
echo This program only works on Windows NT 6.0 to 10.1607.15063 (Windows Vista - 10 Build 1607)
echo.
echo Written by Matthew Jumamoy
echo Last Updated: 09/10/2017
echo Version: 0.2
echo.
echo =================================================================
echo. 
echo This program helps create access to a locked system due to network
echo restrictions. Do not use this file maliciously to access
echo unauthorized systems. Make sure you have run 'cmd.exe' before
echo running this script.
echo.
echo =================================================================
echo Running at %cd%. MAKE SURE THIS IS NOT C:\WINDOWS\SYSTEM32!
timeout 7 > NUL
CLS
echo Welcome to the Windows Localization Command Line Interface Tool
echo Written for Franklin HS @ Elk Grove Unified School District
echo.
echo This program only works on Windows NT 6.0 to 10.1607.15063 (Windows Vista - 10 Build 1607)
echo.
echo Written by Matthew Jumamoy
echo Last Updated: 09/10/2017
echo Version: 0.2
echo.
echo =================================================================
echo.
color CF
echo  This program is intended to be run on the Windows Logon Screen.
echo  (Current User: %USERNAME%)
echo.
SET /P D=Please verify you are in Windows. If you are, press any key.
echo.
echo =================================================================
CLS
color 17
echo Welcome to the Windows Localization Command Line Interface Tool
echo Written for Franklin HS @ Elk Grove Unified School District
echo.
echo This program only works on Windows NT 6.0 to 10.1607.15063 (Windows Vista - 10 Build 1607)
echo.
echo Written by Matthew Jumamoy
echo Last Updated: 09/10/2017
echo Version: 0.2
echo.
echo =================================================================
echo.
echo In order for this program to work properly, we need the Windows
echo drive letter. You can use diskpart.exe to find out what volume it
echo is by the list disk command and determining the volume by the
echo size. If you cannot determine the volume, contact your system
echo administrator. The default is C now that you are in Windows.
echo.
SET /P Input=Please enter the drive letter of your Windows OS: 
echo =================================================================
echo.
echo Working with System Files...
DEL %INPUT%:\WINDOWS\SYSTEM32\OSK.EXE
COPY %INPUT%:\WINDOWS\SYSTEM32\OSK_1.EXE %INPUT%:\WINDOWS\SYSTEM32\OSK.EXE
DEL %INPUT%:\WINDOWS\SYSTEM32\OSK_1.EXE
sfc /scanfile=C:\Windows\system32\osk.exe
echo.
CLS
color 17
echo Welcome to the Windows Localization Command Line Interface Tool
echo Written for Franklin HS @ Elk Grove Unified School District
echo.
echo This program only works on Windows NT 6.0 to 10.1607.15063 (Windows Vista - 10 Build 1607)
echo.
echo Written by Matthew Jumamoy
echo Last Updated: 09/10/2017
echo Version: 0.2
echo.
echo =================================================================
echo.
CLS
echo Creating Temporary User...
echo.
net user /add TempUser A010101a
net localgroup administrators TempUser /add
echo Username - %COMPUTERNAME%\TempUser
echo Password - A010101a
echo.
echo This preconfigured user can be deleted once a user has logged into
echo an administrative account set by the teacher.
echo.
echo Process successfully completed. Please run winlcli.bat to complete
echo process upon logon into temporary account.
echo.
echo The computer will restart in 20 seconds...
shutdown /r /t 20
timeout 20 > NUL