Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName 192.168.0.10
Restart-Service WinRM
Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object *
Enter-PSSession -ComputerName 