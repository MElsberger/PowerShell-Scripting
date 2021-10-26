j# .SYNOPSIS
# Berechnung des freien Speicherplatzes ein beliebigen Festplatte
 
# .DESCRIPTION
# Abfrage über das Laufwerk welches nach dem Speicherplatz abgefragt werden soll
# Speicherplatz der Festplatte berechnen und anschließen den 
# verfügbaren Speicher in Prozent ausgeben.
 
# .PARAMETER
# $driveletter, $Drive, $Prozent
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code 

# Abfrage nach dem Laufwerk
$driveletter = Read-Host -Prompt "Bitte den Laufwerksbuchstaben angeben"

$Drive = Get-Volume -DriveLetter $driveletter

# Prozentberechnung - Speicherplatz
$Prozent= ($Drive.SizeRemaining/$Drive.Size)

# Optional Ausgabe des kompletten Speicherplatzes und des vorhandenen
# write-host $Drive.SizeRemaining
# write-host $Drive.Size

# Umrechnung in Prozent
$SpeicherplatzAusgabe = "{0:P0}" -f $Prozent 

# Ausabe des freien Speicherplatze
Write-Host Es sind noch $SpeicherplatzAusgabe Speicherplatz frei!

