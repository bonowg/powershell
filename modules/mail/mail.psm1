<#
.SYNOPSIS
Sends an email through gmail account
.DESCRIPTION
Sends an email to address given in EmailTo parameter.
.PARAMETER EmailTo
Enter the destination email
.PARAMETER Subject
Enter the subject or leave it to use default value
.PARAMETER Body
Enter the message body
.EXAMPLE
.\mail.ps1 -EmailTo 'sdgdgfs' -Subject 'sdfsdf' -Body 'sdadsfa' -Verbose
#>
function Send-EmailFromGmail {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$EmailTo,
        [string]$Subject="Default subject",
        [Parameter(Mandatory=$True)]
        [string]$Body
        )

    Write-Verbose "got all strings"
    Write-Host "To: $EmailTo, Sub: $Subject, Body: $Body"
}