$x=100
$y=0
$ErrorActionPreference='Continue'
Write-Host "$x / $y = $($x/$y)"
try
{
Write-Host "$x / $y = $($x/$y)"
}
catch
{
Write-Host "Problem ERROR"
}
finally
{
$Error.Count
}
$Error | ForEach-Object { $_ }
$Error[0]