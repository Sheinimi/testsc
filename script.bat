@echo off
PowerShell Set-ExecutionPolicy Unrestricted -Force
PowerShell ./Install_requirements_2008R2.ps1 -Verbose
PowerShell ./Install_winrm.ps1 -Verbose
PowerShell Set-ExecutionPolicy Restricted
Pause