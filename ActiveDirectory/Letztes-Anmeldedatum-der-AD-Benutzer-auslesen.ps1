
# Das letzte Anmeldedatum der Benutzer auslesen

Get-ADUser -Filter * -Properties * | Sort-Object LastlogonDate | Format-Table Name, LastLogonDate