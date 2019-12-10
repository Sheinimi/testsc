@echo off
PowerShell Set-ExecutionPolicy ByPass -Force
PowerShell ./Install_requirements_2008R2.ps1 -Verbose
PowerShell Set-ExecutionPolicy Restricted
Pause
