
# Das letzte Anmeldedatum der Benutzer auslesen

Get-ADUser -Filter * -Properties * | Sort LastlogonDate | Format-Table Name, LastLogonDate