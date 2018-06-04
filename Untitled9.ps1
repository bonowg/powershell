#1.      Zapisz listę plików z katalogu c:\windows w postaci pliku HTML
ls C:\Windows | ConvertTo-Html | Out-File "c:\temp\plikiWindows.html"
#2.      Twoim zadaniem jest raz na tydzień zapisać w pliku informację o wolnym i zajętym miejscu na dysku. Przygotuj komendę, która wyświetli literę dysku, rozmiar dysku i rozmiar wolnego obszaru na dysku dla dysku C:
Get-Volume -DriveLetter C | Select-Object -Property DriveLetter, Size, SizeRemaining 
#3.      Wyeksportuj wynik tej komendy do pliku report.csv w formacie CSV. Zadbaj o to aby koljne uruchomienia polecenia dopisywały kolejny rekord do pliku.
Get-Volume -DriveLetter C | Select-Object -Property DriveLetter, Size, SizeRemaining | Export-Csv C:\temp\csize.csv -Append
#4.      Zaimportuj wynik z pliku i wyświetl go na ekranie
Import-Csv C:\temp\csize.csv
#5.      Dodaj do polecenia z punktu 2 wyrażenie, które spowoduje, że do wyświetlanego wyniku zostanie dołączona informacja o bieżącej dacie
Get-Volume -DriveLetter C | Select-Object -Property DriveLetter, Size, SizeRemaining, @{ name="Date"; expression={Get-Date}}
#6.      Wyeksportuj wynik z poprzedniego polecenia do pliku report_data.csv
Get-Volume -DriveLetter C | Select-Object -Property DriveLetter, Size, SizeRemaining, @{ name="Date"; expression={Get-Date}} | Export-Csv -Path c:\temp\report_data.csv -Append
#7.      Zaimportuj wyniki z pliku
Import-Csv c:\temp\report_data.csv
#8.      Zaimportuj wyniki z pliku, ale wyświetl tylko ostatni zapis.
Import-Csv c:\temp\report_data.csv | Select-Object -Last 1