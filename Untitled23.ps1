Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='C:'"
$driveLetter = 'c:'
Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Get-Member
$object = Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'"
$object.VolumeSerialNumber
Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object Size, FreeSpace, @{ name="Used"; expression={$PSItem.Size-$PSItem.FreeSpace} }
[string]$valueToReturn = 'FreeSpace'
if ( $valueToReturn -eq 'Size' )
{ Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object Size }
ElseIf ($valueToReturn -eq 'FreeSpace' )
{ Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object FreeSpace }
Else
{ Get-WmiObject -Class win32_logicaldisk -Filter "DeviceID='$driveLetter'" | Select-Object @{ name="Used"; expression={$PSItem.Size-$PSItem.FreeSpace} } }


Test-Connection -ComputerName 'DESKTOP-VQ7I9CG'
Test-Connection -Quiet -ComputerName 'DESKTOP-VQ7I9CG'

If (Test-Connection -Quiet -ComputerName 'DESKTOP-VQ7I9CG')
{
Write-Host "Connection OK"
}
else
{
Write-Host "Cannot connect"
}


