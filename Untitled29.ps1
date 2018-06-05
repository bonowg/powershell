for ([int]$i = 0; $i -lt 10; $i++)
{ Write-Host "$i" }

$list = "one", "two", "three", "five", "six"

foreach($nr in $list)
{ Write-Host "$nr"}

$list | foreach { Write-Host "$_"}