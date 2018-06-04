1 -eq 1
1 -gt 2
2 -lt 3
4 -ge 3
5 -le 6
1 -ne 2
'powershell' -like 'Power*'
'powershell' -clike 'Power*'
-not $true
(1 -eq 1) -and (2 -eq 2)
1 -eq 1 -and 2 -eq 2 ga
Get-ChildItem C:\Users\bonow | Where-Object -Property PSIsContainer -eq -value $true 
Get-ChildItem C:\Users\bonow | Where-Object PSIsContainer -eq $true 
Get-ChildItem C:\Users\bonow | Where-Object PSIsContainer -ne $true
Get-ChildItem C:\Users\bonow | Where-Object -Property PSIsContainer -eq -value $false -and Extension -eq '.log'
Get-ChildItem C:\Users\bonow | Where-Object -FilterScript { $PSItem.PSIsContainer -eq $false -and $PSItem.Extension -like '*log' }
Get-ChildItem C:\Users\bonow | Where-Object -FilterScript { $_.PSIsContainer -eq $false -and $_.Extension -like '*log' }
Get-ChildItem C:\Users\bonow -Filter "*.log" -File
Get-Service | where -FilterScript { $_.Name -like '*sql*' -and $_.Status -like 'Running' }
