
# Alle Computer die Mitglied der Domäne sind auslesen
# Ausgabe des letzten Anmeldedatum

Get-ADComputer -Filter * -Properties * | Sort-Object Name, LastlogonDate | Format-Table NaSme, LastLogonDate