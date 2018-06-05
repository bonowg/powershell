cd C:\repos\powershell\security
#.\hi.ps1
Get-ChildItem cert:\CurrentUser\My
@(Get-ChildItem cert:\CurrentUser\My)[1]
Set-AuthenticodeSignature .\hi.ps1 @(Get-ChildItem cert:\CurrentUser\My)[1]