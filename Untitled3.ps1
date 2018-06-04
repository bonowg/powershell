Get-Service | Sort-Object -Descending -Property Name -Unique
Get-Service | Sort-Object Status, Name
Get-Process | Sort-Object -Property WS -Descending
Get-Process | Get-Member
$proces = Get-Process -Name chrome
$proces.Path
Get-EventLog -LogName Security
Get-EventLog -LogName Security | Sort-Object -Property TimeWritten -Descending
#lab
#1
Get-Process
Get-Process | Sort-Object -Property CPU -Descending
Get-Process | Sort-Object -Property CPU
Get-Process | Sort-Object -Property ProcessName, CPU -Descending
Get-Process | Get-Member