$data = Get-Date
$data.ToString("yyyy_MM_dd")
New-Variable LogFile
$LogFile
$LogFile = $data.ToString("yyyy_MM_dd")