[int]$i=0
while($i -lt 10)
{
    Write-Host "loop No $i"
    $i++
}

[int]$i=0

while($i -lt 100)
{
    $i++
    If($i % 2 -eq 0)
    { Write-Host "$i is even"}
    Else
    { Write-Host "$i is odd"}

    if ($i -eq 20)
    {
        Write-Host "Braking at $i"
        Break
    }
}