#1.      Korzystając z klasy Win32_NetworkAdapter wylistuj wszystkie karty sieciowe.
Get-CimInstance -ClassName Win32_NetworkAdapter

#2.      Sprawdź jakie metody i właściwości posiadają obiekty klasy Win32_NetworkAdapter.
Get-CimInstance -ClassName Win32_NetworkAdapter | Get-Member

#3.      Przygotuj komendę zwracające jedną wybrany przez ciebie interfejs sieciowy
Get-CimInstance -ClassName Win32_NetworkAdapter -Filter "DeviceId=1"

#4.      Korzystając z metody Disable wyłącz ten adapter
Get-CimClass -ClassName Win32_NetworkAdapter | Select-Object -ExpandProperty CimClassMethods
Get-CimInstance -ClassName Win32_NetworkAdapter -Filter "DeviceId=1" | Invoke-CimMethod -MethodName Disable

#5.      Korzystając z metody Enable włącz ten adapter
Get-CimInstance -ClassName Win32_NetworkAdapter -Filter "DeviceId=1" | Invoke-CimMethod -MethodName Enable

#6.      Korzystając z klasy Win32_NetworkAdapterConfiguration wylistuj te adaptery sieciowe, które mają włączone DHCP.
Get-CimInstance -ClassName Win32_NetworkAdapterConfiguration -Filter "Index=1"

#7.      Sprawdź jakie metody i właściwości posiadają obiekty klasy Win32_NetworkAdapterConfiguration
Get-CimClass -ClassName Win32_NetworkAdapterConfiguration | Select-Object -ExpandProperty CimClassMethods
Get-CimClass -ClassName Win32_NetworkAdapterConfiguration | Select-Object -ExpandProperty CimClassProperties

#8.      Korzystając z metody ReleaseDHCPLease zwolnij adres IP uzyskany z serwera DHCP dla wybranego przez ciebie interfejsu sieciowego
Get-CimInstance -ClassName Win32_NetworkAdapterConfiguration -Filter "Index=1" | Invoke-CimMethod -MethodName ReleaseDHCPLease


#9.      Korzystając z metody RenewDHCPLease pobierz adres IP z serwera DHCP ponownie.
Get-CimInstance -ClassName Win32_NetworkAdapterConfiguration -Filter "Index=1" | Invoke-CimMethod -MethodName RenewDHCPLease