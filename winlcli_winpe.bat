CLS
@echo off
pushd %~dp0
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
echo This program helps create access to a locked system due to network
echo restrictions. Do not use this file maliciously to access
echo unauthorized systems.
echo.
echo =================================================================
echo Running at %cd%. MAKE SURE THIS IS NOT C:\WINDOWS\SYSTEM32!
echo.
SET /P Confirmation=Press any key to continue...
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
echo  This program only runs in the Windows Preinstallation Environment.
echo  (Current User: %USERNAME%)
echo.
SET /P D=Please verify you are in Windows PE. If you are, press any key.
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
echo administrator.
echo.
SET /P I=Please enter the drive letter of your Windows OS: 
echo =================================================================
echo.
echo Working with System Files...
mkdir %cd%\%COMPUTERNAME%
COPY %I%:\WINDOWS\SYSTEM32\CMD.EXE %CD%\%COMPUTERNAME%\CMD.EXE
COPY %I%:\WINDOWS\SYSTEM32\OSK.EXE %CD%\%COMPUTERNAME%\OSK.EXE
REN %I%:\WINDOWS\SYSTEM32\OSK.EXE OSK_1.EXE
COPY %I%:\WINDOWS\SYSTEM32\CMD.EXE %I%:\Windows\SYSTEM32\OSK.EXE
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
echo Process successfully completed. Please remove installation media.
echo After the media has been removed, restart the computer.
echo Once at login screen, open up the Accessibility menu.
echo Open up On-Screen Keyboard and run START cmd.exe
echo.
echo DO NOT FORGET THE START IN FRONT OF CMD.EXE
echo.
echo Once completed. Run winlcli_logon.bat.