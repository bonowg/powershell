Get-ChildItem C:\Windows -Recurse | Where-Object -FilterScript { $_.PSisContainer -eq $false -and $_.LastWriteTime -gt (Get-Date).AddMinutes(-5) }
Get-ChildItem C:\Users -Recurse | Where-Object -FilterScript { $_.PSisContainer -eq $false -and $_.LastWriteTime -gt (Get-Date).AddDays(-2) -and $_.Extension -eq '.txt' }
Get-Process | Where-Object -Property Name -eq -Value 'notepad'
Get-EventLog -LogName System -Source USER32
Get-EventLog -LogName System -Source USER32 | ? {$_.EventId -eq 1074}