Get-WmiObject | Select-Object *
$PSDefaultParameterValues.Add("Get-WmiObject:Class","Win32_ComputerSystem")
$PSDefaultParameterValues