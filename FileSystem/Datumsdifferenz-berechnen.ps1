# .SYNOPSIS
# Datumsdifferenz berechnen - Wie viel Tage sind es noch bis? 
 
# .DESCRIPTION
# Dieses Code Snippet erlaub die Berechnung, wie viel Tag bis zu 
# einem bestimmten Datum noch sind. 
 
# .PARAMETER
# $startzeit, $endzeit, $datum, $AnzahlTage
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code ##


# Variablen Festlegen

$endzeit = Read-Host -Prompt "Bitte das Datum bis wann berechnet werden soll in der Form dd.mm.yyyy ein!"

$startzeit = Get-Date

# Zeitdifferenz berechnen
$datum = New-TimeSpan -Start $startzeit -End $endzeit

$AnzahlTage = $datum.Days

# Anzahl Tage ausgeben
"Bis zum Enddatum sind es noch " + $AnzahlTage + " Tage"