$baseDir = 'C:\Users\bonow\Desktop\PSE\powershell\'
$filename = 'FileToCopy.txt'
Get-Process | Out-File -FilePath "$baseDir$filename"
$netShare = '\\server01\C$\temp\NewFile.txt'
Copy-Item -Path "$baseDir$filename" -Destination $netShare
try { Copy-Item -Path "$baseDir$filename" -Destination $netShare -ErrorAction SilentlyContinue }
catch { "file cannot be copied"
$Error[0].Exception.Message }