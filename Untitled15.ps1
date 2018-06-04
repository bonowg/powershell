Get-WmiObject -Namespace root -List -Recurse | Group-Object
Get-WmiObject -Namespace root\CIMv2 -List -Recurse | Group-Object
Get-WmiObject -Namespace root -List -Recurse | Group-Object | Where-Object -Property Name -Like '*bios*'
Get-WmiObject -Namespace root -List -Recurse | Select-Object -Unique  __NAMESPACE
Get-WmiObject -Namespace root\CIMv2 -List -Recurse | Select-Object -Unique  __NAMESPACE
Get-WmiObject -Namespace root\CIMv2 -List -Recurse | Where-Object { $PSItem.Name -like "*desktop*" }
Get-WmiObject -Namespace root\CIMv2 -List -Recurse | Where-Object { $PSItem.Name -like "*driver*" }
Get-WmiObject -Class Win32_BIOS | select-object -Property * |  Format-list
Get-CimClass -Class Win32_BIOS | select-object -Property * |  Format-list
Get-WmiObject -Class Win32_Desktop
Get-CimClass -ClassName win32_Desktop
Get-WmiObject -Class Win32_logicaldisk
Get-CimClass -ClassName Win32_logicaldisk
Get-CimInstance -ClassName Win32_Desktop
Get-CimInstance -ClassName Win32_LogicalDisk
Get-WmiObject -Query "SELECT * FROM Win32_Desktop"
Get-CimInstance -Query "SELECT * FROM Win32_Desktop"
Get-WmiObject -Class Win32_Process -Filter "Name = 'notepad.exe'"
Get-CimInstance -ClassName Win32_Process -Filter "Name = 'notepad.exe'"
Get-WmiObject -Query "Select * from win32_process where name = 'notepad.exe'"
Get-CimInstance -Query "Select * from win32_process where name = 'notepad.exe'"
Get-CimClass
Get-WmiObject -Class
#1.      Wylistuj obiekty WMI, które w nazwie zawierają *network*.  Odszukaj klas, które mogą mieć coś wspólnego z konfiguracją kart sieciowych
Get-WmiObject -Namespace root -List -Recurse | Where-Object { $PSItem.Name -like '*network*' }
#2.      Wykonaj tą samą czynność dla klas CIM
Get-WmiObject -Namespace root\CIMv2 -List -Recurse | Where-Object { $PSItem.Name -like '*network*' }
#3.      Korzystając z metod WMI i CIM: Wyświetl obiekty klasy WIN32_NetworkAdapter
Get-WmiObject -Class WIN32_NetworkAdapter
Get-CimInstance -ClassName WIN32_NetworkAdapter
#4.      Korzystając z metod WMI i CIM: Sprawdź jakie właściwości i metody ma obiekt klasy Win32_NetworkAdapter
Get-WmiObject -Class WIN32_NetworkAdapter | Get-Member
Get-CimInstance -ClassName WIN32_NetworkAdapter | Get-Member
#5.      Korzystając z metod WMI i CIM: Wyświetl dla każdego obiektu z poprzednich punktów tylko właściwość Caption oraz MACAddress.
Get-WmiObject -Class WIN32_NetworkAdapter | Select-Object -Property Caption, MACAddress
Get-CimInstance -ClassName WIN32_NetworkAdapter | Select-Object -Property Caption, MACAddress
#6.      Korzystając z metod WMI i CIM: Zbadaj, czy komputer na jakim pracujesz jest wirtualny. W tym celu wyświetl klasę Win32_BIOS
Get-WmiObject -Class WIN32_BIOS
Get-CimInstance -ClassName WIN32_BIOS
#7.      Korzystając z metod WMI i CIM: Korzystając z klasy Win32_UserAccount wyświetl listę lokalnych użytkowników komputera
Get-WmiObject -Class Win32_UserAccount
Get-CimInstance -ClassName Win32_UserAccount

Get-WmiObject Win32_PnPSignedDriver| select DeviceName, DriverVersion, Manufacturer | Sort-Object -Property DeviceName
Get-WmiObject Win32_PnPSignedDriver| select DeviceName, DriverVersion, Manufacturer | where {$_.DeviceName -like "*Intel*"}


#XXXXXXXXXXXXXXXXXXX
Get-WmiObject -Namespace root -List -Recurse | Group-Object | Where-Object -Property Name -Like '*bios*'
Get-CimInstance -ClassName Win32_UserAccount | Select-Object -Property GetType, AccountType, Domain, FullName, Name | Format-Table

