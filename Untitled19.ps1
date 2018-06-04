$env:COMPUTERNAME
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $env:COMPUTERNAME | Select-Object -Property Version, ProductType, OSType, Name
Get-CimInstance -ClassName Win32_Product -ComputerName $env:COMPUTERNAME
Get-CimSession
Get-CimSession | Remove-CimSession
$opcja=New-CimSessionOption -Protocol "DCOM"
$sesja=New-CimSession -ComputerName $env:COMPUTERNAME -SessionOption $opcja
Get-CimSession
Get-CimInstance -ClassName Win32_Printer
Get-CimSession | Remove-CimSession