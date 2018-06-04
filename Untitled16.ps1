Get-CimClass -ClassName Win32_OperatingSystem | Get-Member
Get-CimClass -ClassName Win32_OperatingSystem | Select-Object -ExpandProperty CimClassProperties | Format-Table
Get-CimClass -ClassName Win32_OperatingSystem | Select-Object -Property CimClassProperties
Get-CimClass -ClassName Win32_OperatingSystem | Select-Object -ExpandProperty CimClassMethods
Get-WmiObject -Class Win32_OperatingSystem | Select-Object InstallDate
Get-WmiObject -Class Win32_OperatingSystem | Get-Member
Get-CimClass -ClassName Win32_OperatingSystem | Select-Object -ExpandProperty CimClassProperties['Manufacturer']
Get-CimClass -ClassName Win32_OperatingSystem | Select-Object -ExpandProperty CimClassMethods | Where-Object -Property Name -EQ 'Win32Shutdown' | Select-Object -ExpandProperty Parameters
Get-CimClass -ClassName Win32_LogicalDisk |`
    Select-Object -ExpandProperty CimClassMethods
Get-CimClass -ClassName Win32_LogicalDisk |`
    Select-Object -ExpandProperty CimClassProperties |`
        Where-Object -Property Name -eq 'DeviceId'

Get-CimInstance -ClassName Win32_Group
Get-WmiObject -Class Win32_Group

Get-WmiObject -Class Win32_Group -Filter "Name='Goście'" |`
Invoke-WmiMethod -Name Rename -Argument "Goście2"

Get-CimInstance -ClassName Win32_Group -Filter "Name='Goście2'" |`
Invoke-CimMethod -Name Rename -Arguments @{"Name"="Goście"}

Get-CimInstance -ClassName Win32_Process | Get-Member | Where-Object -Property Name -Like '*Create*'
Get-CimClass -ClassName Win32_Process | Select-Object -ExpandProperty CimClassMethods
Get-WmiObject -Class Win32_Process | Get-Member | Where-Object -Property Name -Like '*Create*'

Invoke-CimMethod -ClassName Win32_Process -Name Create -Arguments @{"CommandLine"="notepad.exe"}
Get-Process | Where-Object -Property Name -EQ 'notepad'
Get-CimInstance -ClassName Win32_Process -Filter "Name='notepad.exe'" | Invoke-CimMethod -MethodName Terminate
Get-CimClass -ClassName Win32_Process | Select-Object -ExpandProperty CimClassMethods


Get-WmiObject -Class Win32_Process -Filter "Name='notepad.exe'" | ForEach-Object { $PSItem.Terminate() }