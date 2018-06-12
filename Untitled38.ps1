Get-WmiObject | Select-Object *
$PSDefaultParameterValues.Add("Get-WmiObject:Class","Win32_ComputerSystem")
$PSDefaultParameterValues | Get-Member
Get-WmiObject -Class win32_service | FT
$PSDefaultParameterValues.Count
help *display*
Get-WmiObject -Class Win32_DesktopMonitor | Select-Object -ExpandProperty Properties
Get-WmiObject -Class Win32_DesktopMonitor | Select-Object ScreenWidth,ScreenHeight
Get-WmiObject -Class Win32_VideoController
$Query = "SELECT * FROM CIM_VideoControllerResolution"
$res = Get-WMIObject -query $Query | Select Caption
$res
(Get-Job).JobStateInfo
Start-Job -ScriptBlock { while ($true) {} } -Name petla
Get-WmiObject -Class win32_videocontroller -AsJob
@(Get-Job)[1].HasMoreData
Stop-Job -Name petla
Receive-Job -Name Job3

$optionsHide = New-ScheduledJobOption -WakeToRun -HideInTaskScheduler
$optionsNeeded = New-ScheduledJobOption -RequireNetwork -RunElevated
$when = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Monday, Wednesday, Friday -At 3AM -RandomDelay 00:20
$triggerLater = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(3)
$when | FT
$triggerLater | FT
Register-ScheduledJob -ScriptBlock { Get-WmiObject -Class Win32_OperatingSystem } -Trigger $triggerLater -ScheduledJobOption $optionsNeeded -Name "Pozniej"
Get-ScheduledJob

Start-Job -ScriptBlock { Get-WmiObject -Class Win32_LogicalDisk | Out-File "LDRes.txt" }
Start-Job -ScriptBlock { pwd }
pwd
Get-Job
Receive-Job -Id 25 
Get-WmiObject -Class Win32_LogicalDisk | Out-File "C:\Users\wagolebx\Documents\LDRes.txt"
Remove-Item -Path "LDRes.txt"
Get-Content -Path "LDRes.txt"