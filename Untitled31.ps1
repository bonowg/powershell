$from = "bonowg@gmail.com"
$to = "bonowg@gmail.com"
$sub = "Test email from PowerShell"
$body = "Only a test email."
$SMTPserver = "smtp.gmail.com"
$SMTPclient = New-Object Net.Mail.SmtpCLient($SMTPserver, 587)
$SMTPclient.EnableSsl = $true
$SMTPclient.Credentials = New-Object System.Net.NetworkCredential("bonowg","P@`$sw0rd000333");
$SMTPclient.Send($from, $to, $sub, $body)
$SMTPclient | Get-Member