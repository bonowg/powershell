Get-WmiObject -Class win32_operatingsystem -ComputerName 'WAGOLEBX-MOBL','AAA' -ErrorAction Stop
Get-WmiObject -Class win32_operatingsystem -ComputerName 'WAGOLEBX-MOBL','AAA' -ErrorAction SilentlyContinue
Get-WmiObject -Class win32_operatingsystem -ComputerName 'WAGOLEBX-MOBL','AAA' -ErrorAction Inquire
Get-WmiObject -Class win32_operatingsystem -ComputerName 'WAGOLEBX-MOBL','AAA'
$ErrorActionPreference = 'SilentlyContinue'

$bits = Get-Service bits
$bits.StartType
$bits.ChangeStartMode('Disabled')