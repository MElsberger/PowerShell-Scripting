# Alle Prozesse auslesen 
Get-Process
# die ID eines bestimmten Prozess anzeigen 
# Bsp ID 8436
Get-Process | Where-Object {($_.id -eq 8436)}
