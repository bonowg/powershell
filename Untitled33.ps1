$baseDir = 'C:\repos\powershell\temp'
for([int]$i=1; $i -lt 20; $i++)
{
    $newPath = Join-Path -Path $baseDir -ChildPath "plik-$i.txt"
    echo "Plik Nr $i" | Out-File -FilePath $newPath
}
$files = Get-ChildItem -Path $baseDir
$files | foreach { 
    $PSItem.IsReadOnly = $false
        $PSItem.LastWriteTime = $PSItem.LastAccessTime.AddMonths((Get-Random -Maximum 24 -Minimum 1))
    }

Get-ChildItem -Path $baseDir | Where-Object { $PSItem.LastWriteTime -lt '04-07-2017'}

