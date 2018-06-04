Get-WmiObject -Class win32_operatingsystem | Select-Object -Property *
Get-Service -ComputerName "WAGOLEBX-MOBL" | Where-Object -Property Name -Like "*sql*"
Get-ChildItem VARIABLE:\ 
Get-ChildItem VARIABLE:\ | Where-Object -Property Name -EQ PSVersionTable | Select-Object -ExpandProperty Value
Get-Command -Noun Variable
$comNames = "WAGOOLEBX-MOBL"
Get-ChildItem VARIABLE:\ 
Clear-Variable comNames
Remove-Variable comNames
Get-Service | Set-Variable comNames
$comNames
$s = Get-Service bits | Select Name
$s | Get-Member
$s = Get-Service bits | Select -ExpandProperty Name
$s | Get-Member

$count = 64
$line = "There are $count elements"
Write-Host 'The line is: $line'

#1.      Zadeklaruj zmienną o nazwie MyService i przypisz do niej wartość „bits”
$MyService = 'bits'

#2.      Wyświetl usługi o nazwie zgodnej z nazwą wpisaną do zmiennej MyService
Get-Service | Where-Object -Property Name -Like "*$MyService*"

#3.      Korzystając z poleceń dedykowanych do obsługi zmiennych zadeklaruj zmienne

#a.      EventLogName i przypisz jej wartość System
New-Variable EventLogName
Set-Variable EventLogName System

#b.      EventNumber i przypisz jej wartość 5
New-Variable EventNumber
Set-Variable EventNumber 5

#4.      Zmień polecenie wyświetlające 3 ostatnie zdarzenia z aplikacyjnego dziennika zdarzeń, tak aby korzystało z wcześniej zdefiniowanych zmiennych:
Get-EventLog -Newest $EventNumber -LogName application | Where-Object -Property EntryType -EQ $EventLogName

#5.      Wyświetl zawartość napędu  ENV: (Ten napęd zawiera zmienne środowiskowe zdefiniowane na danym komputerze. Można ich używać w swoich skryptach.)
Get-ChildItem ENV:
Get-ChildItem ENV: | Where-Object -Property Name -EQ PATH | Select-Object -ExpandProperty Value

#6.      Nie wykorzystując instrukcji dedykowanych do pracy ze zmiennymi (w uproszczony sposób – notacja z $) utwórz zmienne i przypisz im odpowiednie wartości:

#a.      MyComputerName
$MyComputerName = Get-Content -Path Env:\COMPUTERNAME
$MyComputerName

#b.      MyOperatingSystem
$MyOperatingSystem = $env:PROCESSOR_ARCHITECTURE
$env:PROCESSOR_ARCHITECTURE
#c.      MyUserName

#Uwaga: Zmienne środowiskowe z napędu ENV: są w powershell traktowane jak pliki. Aby wczytać ich wartość posłuż się poleceniem Get-Content, np. tak:

#Get-Content -Path Env:\PROCESSOR_ARCHITECTURE

#7.      Do zmiennych środowiskowych można się również odwoływać przez zmienną $env. Pozwala to uprościć konstrukcje z poprzedniego zadania. Odwołaj się do tych samych zmiennych środowiskowych korzystając z notacji podobnej do:

#$env:PROCESSOR_ARCHITECTURE