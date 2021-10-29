


$password = "Passw0rt!" | ConvertTo-SecureString -AsPlainText -Force

New-ADUser -Name "elektro" -GivenName "elektro" -Surname "strom" `
-Path "OU=HP,DC=it,DC=local" -Enabled $True `
-AccountPassword $password -ChangePasswordAtLogon $True