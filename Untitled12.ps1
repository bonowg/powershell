Get-ChildItem C:\temp
Get-ChildItem C:\temp | Get-Member
Get-ChildItem C:\temp -Filter "*.html"
Get-ChildItem C:\temp -Filter "*.html" | foreach delete
Get-ChildItem C:\temp | Where-Object -FilterScript { $PSItem.Extension -eq '.csv' } | foreach { $PSItem.CopyTo('C:\Temp\CSVki\'+$PSitem.Name+'.csv') }
Get-ChildItem C:\temp | select Name
Get-Process | foreach -Begin { Get-Date | Out-File C:\temp\report.txt -Append } -Process { $PSItem | Select-Object Name, Id, VM | Out-File C:\temp\report.txt -Append } -End { 'End of'| Out-File C:\temp\report.txt -Append }
Get-Process | foreach -Begin { Get-Date | Out-File C:\temp\report.txt -Append } -Process { '{0}`t`t`t{1}' -f ($PSItem.Name), ($PSItem.Id) | Out-File C:\temp\report.txt -Append } -End { 'End of'| Out-File C:\temp\report.txt -Append }

#1.      Utwórz plik „services.txt” o zawartości                wuauserv                bits
"wuauserv","bits" | Out-File C:\temp\services.txt
#2.      Wczytaj zawartość pliku.
Get-Content C:\temp\services.txt
#3.      Połącz polecenie z poprzedniego punktu potokiem z poleceniem zatrzymującą usługi o nazwach takich jak wpisane w pliku. (Pamiętaj o uruchomieniu powershella jako administrator)
Get-Content C:\temp\services.txt | foreach -Process { Stop-Service -Name $PSItem}
#4.      Zmień polecenie z poprzedniego punktu tak, aby te usługi były uruchamiane.
Get-Content C:\temp\services.txt | foreach -Process { Start-Service -Name $PSItem}
#5.      Dodaj do poprzedniego polecenia dodatkową instrukcję powodującą wyświetlenie napisu „Starting …”. W miejscu kropek ma się pojawić nazwa startowanej usługi. (Kiedy w jednym bloku chcesz uruchamiać kilka komend rozdziel je znakiem średnika).
Get-Content C:\temp\services.txt | foreach -Process { 'Staring '+$PSItem; Start-Service -Name $PSItem }
#6.      Dodaj blok poleceń wykonywany przed uruchamianiem usług, który wyświetli komunikat „STARTING SERVICES”. (Jeśli komenda jest zbyt długa, to możesz zakończyć linijkę znakiem ` - odwrócony apostrof – na klawiaturze na tym samym klawiszu co tylda ~. Dla Powershella to informacja, że ciąg dalszy komendy znajduje się poniżej.)
Get-Content C:\temp\services.txt | foreach `
-Begin { 'STARTING SERVICES' }`
-Process { 'Staring '+$PSItem; Start-Service -Name $PSItem }
#7.      Dodaj blok poleceń uruchamianych po uruchomieniu lub zatrzymaniu usług, który wyświetli komunikat „DONE”.
Get-Content C:\temp\services.txt | foreach `
-Begin { 'STARTING SERVICES' }`
-Process { 'Staring '+$PSItem; Start-Service -Name $PSItem }`
-End { 'DONE.' }