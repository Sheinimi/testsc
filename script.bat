@echo off

if "%~1" neq "" goto :%~1

PowerShell Set-ExecutionPolicy ByPass -Force
PowerShell ./Install_requirements_2008R2.ps1 -Verbose
echo "Requirements installed."

call :reboot part2
goto :eof

:part2
PowerShell ./Install_winrm.ps1 -Verbose
echo "WinRM installed."
PowerShell Set-ExecutionPolicy Restricted
Pause
goto :eof

:reboot
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /t REG_SZ /d "\"%~dpf0\" %~1" /v  RestartMyScript /f
shutdown /r /t 0
