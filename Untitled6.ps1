Get-EventLog -LogName Application -Newest 5
Get-ChildItem C:\Users\bonow\Downloads -Recurse | Sort-Object -Property Length -Descending | Select-Object Name, Length -First 3
Get-ChildItem C:\Users\bonow\Downloads -Recurse | Sort-Object -Property Length -Descending | Select-Object Name, Length -First 3 -Skip 1
Get-ChildItem C:\Users\bonow\Downloads -Recurse | Sort-Object -Property Length -Descending | Select-Object Name, Extension, IsReadOnly, CreationTime
Get-ChildItem C:\Users\bonow\Downloads | Sort-Object -Property Length -Descending | Select-Object -Property * | Format-Table