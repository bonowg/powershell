cd C:\repos\powershell\
.\mail.ps1
.\mail.ps1 -EmailTo 'sdgdgfs' -Subject 'sdfsdf' -Body 'sdadsfa' -Verbose
help .\mail.ps1 -Full
. C:\repos\powershell\mail.ps1
Send-EmailFromGmail -EmailTo 'sdgdgfs' -Subject 'sdfsdf' -Body 'sdadsfa' -Verbose
Import-Module sqlps
Import-Module mail