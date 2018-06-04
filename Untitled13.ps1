$plik = "c:\Temp\computername.txt"
"DESKTOP-VQ7I9CG" > $plik
Get-Content $plik
Get-Content $plik | Get-Process
#help Get-Process -ShowWindow
Get-Content $plik | Select-Object @{name="ComputerName"; Expression={$_} } | Get-Process
Get-Process -ComputerName ( Get-Content $plik )

$plik2 = "c:\temp\process.txt"
"winlogon", "wininit" | Out-File $plik2
Get-Content $plik2 | Select-Object @{name="Name"; expression={$_} } | Get-Process
Get-Process -Name (Get-Content $plik2)

notepad
Get-Process -Name notepad
Get-Process -Name notepad | Get-Member
Get-Process -Name notepad | Stop-Process
$plik3 = "C:\Temp\processToStop.txt"
"notepad" | Out-File $plik3
Get-Content $plik3
notepad
Get-Content $plik3 | Select-Object @{name="Name"; expression={$_}} | stop-process
Stop-Process -Name (Get-Content $plik3)

#1.      Wyświetl dostępne wolumeny dyskowe
Get-Volume
#2.      Skonstruuj polecenie, które wyświetli informacje tylko o wtych wolumenach dyskowych, które są przekazywane potokiem rozpoczynającym się od: ‘C’ | …. (jeśli na tym etapie otrzymujesz błąd – kontynuuj do następnego kroku)
'C' | Select-Object @{ name='DriveLetter'; expression={$PSItem} } | Get-Volume
#3.      Wyświetl help dotyczący Get-Volume. Zwróć uwagę na to, jak można przekazywać potokiem wartość dla parametru DriveLetter
help Get-Volume -ShowWindow
#4.      Skonstruuj polecenie, który zmieni nazwę kolumny na „DriveLetter” dla potoku rozpoczynającego się od ‘C’ | ….
'C' | Select-Object @{ name='DriveLetter'; expression={$PSItem} } | Get-Volume
#5.      Korzystając z potoku z poprzedniego zadania połącz go z poleceniem Get-Volume, tak aby wyświetlane były tylko informacje o wolumenach przekazywanych potokiem.
'C' | Select-Object @{ name='DriveLetter'; expression={$PSItem} } | Get-Volume
#6.      Jak wykonać to samo zadanie z wykorzystaniem ForEach?
Get-Volume -DriveLetter ('C')
'c' | foreach {Get-Volume -DriveLetter $PSItem}
 
