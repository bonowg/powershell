Get-Process | Measure-Object -Sum
Get-Process | Measure-Objec
1,2,3,4,5 | measure -Minimum -Sum -Maximum -Average
1..100 | measure -Minimum -Sum -Maximum -Average
Get-ChildItem C:\Windows | Measure-Object
Get-ChildItem C:\Windows
Get-ChildItem C:\Windows | Measure-Object -Sum -Property Length
ls C:\temp
ls C:\temp | measure
ls C:\temp | Measure-Object -Property LastWriteTime -Maximum
ls C:\Windows | Measure-Object -Property Length -Maximum
ls C:\Windows | Sort-Object -Property Length -Descending
Get-HotFix
Get-HotFix | Measure-Object
Get-ChildItem Cert:\LocalMachine -Recurse

ls | measure | gm
Get-ChildItem Cert:\LocalMachine -Recurse | Measure-Object
Get-ChildItem Cert:\LocalMachine -Recurse | Measure-Object -Property NotAfter -Minimum 
ls -Recurse c:\windows\system | measure -Property Length -Minimum 