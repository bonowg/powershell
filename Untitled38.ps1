$asus = 'DESKTOP-6S6V7RL'
$cred = Get-Credential
$programToFind = 'notepad'
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { notepad.exe }
$procNameL = 'nvcontainer'
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { Get-Process | Sort-Object -Property Name }
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { Param($procName) Get-Process -Name $procName } -ArgumentList ($procNameL)
$log = "Security"; $num = 10
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { Param($a, $b) Get-EventLog -LogName $a -Newest $b } -ArgumentList ($log, $num)
Get-ItemProperty -Path HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -ne $null } | Select-Object -Property DisplayName, Publisher, DisplayVersion, InstallDate
Invoke-Command -ComputerName $asus -Credential $cred -ScriptBlock { Get-ItemProperty -Path HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -like '*C++*' } } | FT

#sesje

New-PSSession -ComputerName $asus -Credential $cred -Name 'Sesja1'
Get-PSSession | Where-Object -Property Name -eq 'Sesja1'
Enter-PSSession -Session @(Get-PSSession)[0]
Invoke-Command -Session (Get-PSSession -Name 'Sesja1') -ScriptBlock { Get-ItemProperty -Path HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -like '*C++*' } } | FT
New-PSSession -ComputerName $asus -Credential $cred -Name 'Backup'
Get-PSSession