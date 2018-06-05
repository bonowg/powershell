$baseDir = "C:\repos\powershell\forexercises"
for([int]$i = 1; $i -lt 10; $i++)
{
    $newPath=Join-Path -Path $baseDir -ChildPath "$i.txt"
    try 
    { New-Item -ItemType File -Path $newPath -ErrorAction SilentlyContinue }
    catch
    { Write-Warning "File $newPath exists" }
    echo "This is file Nr $i" | Out-File $newPath
}

$files = Get-ChildItem -Path $baseDir

foreach($file in $files)
{
    $file.Encrypt()
    $file.IsReadOnly = $true
}

$files = Get-ChildItem -Path $baseDir

$files | foreach {
    $_.Decrypt()
    $_.IsReadOnly = $false
    }