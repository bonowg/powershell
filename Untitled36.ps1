cd alias:
ls
cd variable:
ls
Get-PSProvider
Get-Module -ListAvailable
Get-PSDrive
New-PSDrive TestyPS FileSystem C:\repos\powershell
Get-Alias 
Get-PSDrive
Get-Command -Module NetTCPIP
Get-NetIPAddress | Where-Object { $PSItem.PrefixOrigin -eq 'DHCP' }
Get-Module 
Remove-Module NetTCPIP