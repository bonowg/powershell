$folder = 'C:\Users\bonow\Downloads'
Get-ChildItem $folder
Get-ChildItem $folder | Select-Object -Property Name, Length
Get-ChildItem $folder | Select-Object -Property Name, Length,@{name='Size in KiB';expression={ '{0:N2} KiB' -f ($PSItem.Length/1024)}},@{name='Size in MB';expression={ '{0:N2} MB' -f ($PSItem.Length/1MB)}}
Get-WmiObject win32_logicaldisk | get-member
Get-WmiObject win32_logicaldisk | select -Property deviceid, mediatype, @{name='Free Space %';expression={ '{0,6:P2}' -f ($PSItem.FreeSpace / $PSItem.Size)}}


#Sekcja 4, wykład 36
#1.      Wyświetl certyfikaty z magazynu Local Machine >> CA (cert:\LocalMachine\CA)
ls Cert:\LocalMachine\CA
#2.      Wyświetl tylko właściwości: Thumbprint, NotBefore i NotAfter (to są daty ważności certyfikatu).
ls Cert:\LocalMachine\CA | Select-Object -Property Thumbprint, NotBefore, NotAfter
#3.      Wyświetl dodatkową kolumnę wyliczaną jako różnicę w dniach między NotAfter i NotBefore (na rzecz $_.NotAfter wywołaj metodę Subtract podając jako argument $_.NotBefore.
ls Cert:\LocalMachine\CA | Select-Object -Property Thumbprint, NotBefore, NotAfter, @{Name='NAFTER-NBEFORE';Expression={ '{0}' -f ($PSItem.NotAfter-$PSItem.NotBefore)}}
ls Cert:\LocalMachine\CA | Select-Object -Property Thumbprint, NotBefore, NotAfter, @{Name='NAFTER-NBEFORE';Expression={ '{0}' -f ($PSItem.NotAfter.Subtract($PSItem.NotBefore))}}
#4.      Wyświetl listę procesów
Get-Process
#5.      Posortuj listę procesów wg CPU malejąco
Get-Process | Sort-Object -Property CPU -Descending
#6.      Wartość CPU jest podawana w sekundach. Przelicz wartość na minuty. Wyświetl tylko 5 najbardziej obciążających CPU procesów
Get-Process | Sort-Object -Property CPU -Descending | Select-Object ProcessName, @{Name='CPU in min';Expression={ '{0:N0}' -f ($PSItem.CPU/60) }} -First 5
#7.      Zmień formatowanie wyniku tak, aby czas był wyświetlany w minutach (bez miejsc po przecinku)
