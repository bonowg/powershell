Get-WmiObject -Class Win32_Process | Select-Object -Property ProcessId, Priority, ProcessName
Get-WmiObject -class win32_process -query "show tables"
Get-WmiObject -Class Win32_CPU | Format-List -Property *
Get-CimInstance -Namespace root -ClassName __Namespace
Get-WmiObject -Namespace root -ClassName __Namespace | Format-Table
Get-Process | Select-Object -Property *  | ConvertTo-Csv | Out-File C:\temp\procesy.xml
Get-Help convertto
Get-Process | Select-Object -First 3 | ConvertTo-Csv | ConvertFrom-Csv | Format-Table
Get-Content C:\temp\procesy.xml | ConvertFrom-Csv | Get-Member
Get-Process | Get-Member
Import-Csv C:\temp\procesy.xml | Format-Table