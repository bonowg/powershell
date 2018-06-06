function Get-FilesOlderThan {
[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true)]
    [string]$OlderThan,
    [string]$Path="."
)

Get-ChildItem -Path $Path | Where-Object { $PSItem.LastWriteTime -lt $OlderThan }
}