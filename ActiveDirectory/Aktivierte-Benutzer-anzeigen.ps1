# Zeigt alle aktivierten AD Benutzer an

Get-ADUser -Filter {Enabled -eq "true"}
