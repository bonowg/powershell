Get-CimInstance -ClassName Win32_LogicalDisk -ComputerName 'DESKTOP-VQ7I9CG'
$sesja=New-CimSession -ComputerName 'DESKTOP-VQ7I9CG'
$sesja
Get-CimInstance -ClassName Win32_LogicalDisk -CimSession $sesja
$opcja=New-CimSessionOption -Protocol "DCOM"
$sesja=New-CimSession -ComputerName 'DESKTOP-VQ7I9CG' -SessionOption $opcja
Get-CimInstance -ClassName Win32_LogicalDisk -CimSession $sesja
$sesja
Get-CimSession
Get-CimSession | Remove-CimSession
