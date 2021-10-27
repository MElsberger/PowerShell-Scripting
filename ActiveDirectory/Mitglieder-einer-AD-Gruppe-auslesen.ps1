# Alle Mitglieder einer bestimmten Domänen-Gruppe auslesen 
# Den Inhalt in eine Textdatei speichern 


Get-ADGroupMember -Identity Domänen-Admins | Select-Object name | Out-File C:\AD-Benutzer-Admins.txt