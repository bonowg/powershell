[int]$i = 0
[int]$max = 30
[string]$sourceFileName = "C:\repos\powershell\loopexercises\master.txt"
"This is a master configuration file" | Out-File $sourceFileName
[string]$destinationFolder = "C:\repos\powershell\loopexercises\distribution\"
If( -not (Test-Path -Path $destinationFolder))
{ 
    Write-Warning "Path $destinationFolder does NOT exist, creating...."
    New-Item -Path $destinationFolder -Force -ItemType Directory 
    Write-Host "..done"
}
Else
{
    Write-Host "Path $destinationFolder does exist. OK"
}

while ($i -lt $max)
{
    $i++
    $destinationFile = "$i.txt"
    $newFileName = Join-Path -Path $destinationFolder -ChildPath $destinationFile
    Get-Content $sourceFileName | Out-File -FilePath $newFileName
    Write-Host "File $newFileName has been created."
}