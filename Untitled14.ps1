Get-EventLog Security -Newest 10
Get-Service | Format-Table -Property DisplayName -AutoSize
Get-Service | Format-Wide
Get-Service | Format-Wide -Property Status
Get-Service | Format-Wide -Column 3
Get-Service | Format-Wide -AutoSize
Get-Service | Format-List -Property *
Get-Service | Format-List -Property Name, Status
Get-Service | Format-Table -Property * -AutoSize -Wrap
ls C:\temp | Format-Table -Property Mode, LastWriteTime, Name, @{ name='Size(KB)'; expression={$PSItem.Length/1KB}}
ls C:\temp | Format-Table -Property Mode, LastWriteTime, Name, @{ name='Size(KB)'; expression={$PSItem.Length/1KB}; formatString="N2"}
ls C:\temp | Format-Table -Property Mode, LastWriteTime, Name, @{ name='Size(KB)'; expression={$PSItem.Length/1KB}; formatString="N2"} -AutoSize
Get-Service | sort Status | Format-Table
Get-Service | Sort-Object -Property Status | Format-Table -GroupBy Status
Get-Service | Group-Object -Property Status
Get-Service | Out-GridView
Get-Service | Out-Printer
Get-EventLog -LogName Application -Newest 20 | Sort-Object -prop Source|  FT TimeWritten, Source
Get-ChildItem C:\Users\bonow -Recurse | Group-Object -Property PSIsContainer
Get-WMIObject -Class Win32_Desktop | Format-List -Property *
Get-WmiObject -Class win32_desktop | Format-wide