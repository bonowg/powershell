$driveLetter = 'c:'
[string]$valueToReturn = ''
if ( $valueToReturn -eq 'Size' )
{ Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object Size }
ElseIf ($valueToReturn -eq 'FreeSpace' )
{ Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object FreeSpace }
Else
{ Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object @{ name="Used"; expression={$PSItem.Size-$PSItem.FreeSpace} } }

switch($valueToReturn)
{
    "FreeSpace" { Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object FreeSpace }
    "Size" { Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object Size }
    "Used" { Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object @{ name="Used"; expression={$PSItem.Size-$PSItem.FreeSpace} } }
    Default { Write-Warning "NIE PODANO OPCJI "}
}
