CLS
@echo off 
pushd %~dp0
color 17
ECHO Killing OSK.exe
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
echo Running at %cd%. MAKE SURE THIS IS NOT C:\WINDOWS\SYSTEM32!
timeout 5 > NUL
echo.
color CF
echo  This program requires elevation. (Current User: %USERNAME%)
echo  Please verify that this command line is elevated.
echo.
SET /P D=Afterwards, press any key to continue...
echo.
echo =================================================================
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
echo In order for this program to work properly, we need the Windows
echo drive letter. You can use diskpart.exe to find out what volume it
echo is by the list disk command and determining the volume by the
echo size. If you cannot determine the volume, contact your system
echo administrator. The default is C now that you are in Windows.
echo.
SET /P Input=Please enter the drive letter of your Windows OS: 
echo =================================================================
echo.
CLS
@echo off
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
echo  Deleting osk_1.exe from previous operations if available...
echo  Verifying the integrity of changed system files...
echo  Failure of this operation is in fact OKAY!
TAKEOWN /F %INPUT%:\WINDOWS\SYSTEM32\OSK_1.EXE
icacls %INPUT%:\WINDOWS\SYSTEM32\OSK_1.EXE /GRANT %USERNAME%:(D,WDAC)
DEL %SYSTEMROOT%\WINDOWS\OSK_1.EXE
SFC /SCANFILE=%INPUT%:\WINDOWS\SYSTEM32\OSK.EXE
SFC /SCANFILE=%INPUT%:\WINDOWS\SYSTEM32\CMD.EXE
echo.
echo =================================================================
echo.
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
echo  The program is now exporting the registry in case of failure...
echo  This process may take a while... Please wait...
echo.
mkdir %cd%\%COMPUTERNAME%
REGEDIT /E %cd%\%COMPUTERNAME%\registry_%computername%.REG
REG EXPORT "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy" %cd%\%COMPUTERNAME%\gpeditregistry_%computername%.REG
REG EXPORT "HKLM\Software\Policies\Microsoft" %cd%\%COMPUTERNAME%\gpeditregistry_hklm_%computername%.REG
REG EXPORT "HKCU\Software\Policies\Microsoft" %cd%\%COMPUTERNAME%\gpeditregistry_hkcu_%computername%.REG
REG EXPORT "HKCU\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects" %cd%\%COMPUTERNAME%\gpeditregistry_hkcugpo_%computername%.REG
REG EXPORT "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" %cd%\%COMPUTERNAME%\gpeditregistry_hkcupol_%computername%.REG
echo The registry has been successfully saved to
echo %cd%
echo.
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
echo  The program is now exporting Group Local Policy Settings...
echo  This process should take less than 10 seconds...
echo.
GPRESULT /H %cd%\%COMPUTERNAME%\grouplocalpolicy_%computername%.HTML
echo The Group Local Policy Settings has been successfully saved to
echo %cd%\%COMPUTERNAME%\grouplocalpolicy_%computername%.HTML
echo.
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
echo  The program is now resetting all Group Local and Security Policies to default...
echo  This process is destructive... DO NOT TURN OFF THE COMPUTER!
echo.
echo  Forcing deletion of local network policies...
echo  This process is destructive... DO NOT TURN OFF THE COMPUTER!
reg delete "HKLM\Software\Policies\Microsoft" /f
reg delete "HKCU\Software\Policies\Microsoft" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" /f
RD /S /Q "%WinDir%\System32\GroupPolicyUsers"
RD /S /Q "%WinDir%\System32\GroupPolicy"
secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose
%CD%\RESETLOCALPOLICY.VBS
echo.
color 17
echo The settings have been reset to default.
echo.
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
echo Ejecting local computer from network...
Wmic computersystem where name="%computername%" call joindomainorworkgroup name=WORKGROUP
echo.
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
echo All tasks related to clearing network policies on this local computer
echo has been completed.
echo.
echo If you wish to create the matrix of users as outlined by Mr. Paul Akuna
echo on this computer. Input '1'.
echo.
SET /P M=If not, press any key to exit. 
IF %M%==1 GOTO IN_1

:IN_1
@echo off
echo.
echo The following tasks will be completed...
echo   Adding the student, teacher, AND root accounts to %COMPUTERNAME%.
echo   The root and teacher accounts will have Administrative Rights.
echo   The TempUser will be deleted after this operation.
echo.
net user /add student Passw0rd
net user /add teacher fhsadmin
net user /add root fhsadmin
net localgroup administrators teacher /add
net localgroup administrators root /add
net user /delete TempUser
echo.
echo The accounts have been added.
timeout 3 > NUL
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
echo Setup has been completed.
echo.
echo Windows must restart to save changes. The computer will restart
echo automatically in 10 seconds. Please save all work now...
shutdown /r /t 10
timeout 10 > NUL