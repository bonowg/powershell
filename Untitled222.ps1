$fileName = "C:\repos\powershell\compNames.txt"
"Comp1`nConp2`nComp3" > $fileName
$compNames = Get-Content $fileName
$compNames | ForEach-Object {"Working on $_"}
$compNames | Get-Member
$compNames.Length
$compNames[0]
$compNames.IndexOf('Comp1')
$compNames.Count
$serwisy = Get-Service
$serwisy.Count
$compNames[-1]

$certs = Get-ChildItem Cert:\LocalMachine\CA
$certs
$certs | ForEach-Object { $_.Thumbprint +" - "+$_.Verify() }

$subdirs = "01_Input", "02_Processing", "03_Results"
$BaseDir = "C:\repos\powershell\"
$subdirs | ForEach-Object { New-Item -ItemType Directory -Path "$BaseDir$_" }
$subdirs | Out-File "C:\repos\powershell\subdirs.txt"
Get-Content "C:\repos\powershell\subdirs.txt" | ForEach-Object { "$BaseDir$_" }
Get-Content "C:\repos\powershell\subdirs.txt" | ForEach-Object { New-Item -ItemType Directory -Path "$BaseDir$_" }