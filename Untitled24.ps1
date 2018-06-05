$isAlive = Test-Connection -ComputerName '10.91.86.216' -Quiet -count 1
$isAlive = Test-Connection -ComputerName 'localhost' -Quiet -Count 1
$isAlive
