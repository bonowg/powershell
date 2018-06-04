#1.      Polecenie Get-Volume wyświetla informacje o wolumenach, sprawdź jego działanie
Get-Volume
#2.      Zobacz jakie właściwości i metody posiadają zwracane przez Get-Volume obiekty
Get-Volume | Get-Member
#3.      Wyświetl tylko następujące informacje o wolumenach: litera dysku, rozmiar dysku, pozostałe wolne miejsce na dysku
Get-Volume | Select-Object -Property DriveLetter, Size, SizeRemaining
#4.      Posortuj wynik tak, aby dyski z najwększym wolnym obszarem były na pierwszym miejscu
Get-Volume | Sort-Object -Property SizeRemaining -Descending
#5.      Wyświetl tylko jeden dysk z największym wolnym obszarem
Get-Volume | Sort-Object -Property SizeRemaining -Descending | Select-Object -First 1
#6.      Wyświetl listę procesów
Get-Process
#7.      Posortuj wynik wg CPU malejąco
Get-Process | Sort-Object -Property CPU
#8.      Wybierz tylko 5 procesów najbardziej intensywnie wykorzystujących CPU
Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 5
#9.      Wyświetl 1000 ostatnich zdarzeń z dziennika zdarzeń „Application”
Get-EventLog -LogName Application | Sort-Object -Property TimeWritten -Descending | Select-Object -First 1000
#10.   Wyświetl tylko właściwość Source dla tych ostatnich 1000 zdarzeń
Get-EventLog -LogName Application | Sort-Object -Property TimeWritten -Descending | Select-Object -Property Source -First 1000
#11.   Wyświetl tylko unikalne „source” występujące wśród ostatniego 1000 zdarzeń. 
Get-EventLog -LogName Application | Sort-Object -Property TimeWritten -Descending | Select-Object -Property Source -First 1000 -Unique