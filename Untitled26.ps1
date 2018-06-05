$license = Get-WmiObject -Class SoftwareLicensingProduct  -Filter "Name LIKE '%Windows%' AND PartialProductKey <> null"
$license.LicenseStatus
$licenseDesc = switch($license.LicenseStatus)
{
0 { "Unlicensed" }
1 { "Licensed" }
2 { "OOBGrace" }
3 { "OOTGrace" }
4 { "NonGenuineGrace" }
5 { "Notification" }
6 { "ExtendedGrace" }
}
Write-Host "The system license status is: $licenseDesc"