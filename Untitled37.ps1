$asus = 'DESKTOP-6S6V7RL'
$cred = Get-Credential
$cred
Enter-PSSession -ComputerName $asus -Credential $cred -Name Nowa
Get-PSSession
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { Get-Process }
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { Get-WmiObject -Class win32_operatingsystem } | Get-Member
Get-Item WSMan:\localhost\Client\TrustedHosts
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { get-content Env:\COMPUTERNAME }