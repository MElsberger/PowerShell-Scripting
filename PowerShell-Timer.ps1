# .SYNOPSIS
# Eignen Timer für in der Windows PowerShell 
 
# .DESCRIPTION
# Timer der eine bestimmte Zeit lang läuft!
 
# .PARAMETER
# $Start, $Zeitspanne, $Ende, &Zeitanzeige, $Zeit
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code 

# Auslesen der aktuelle Zeit sowie dem Datum
$Start = Get-Date

# Angabe der Zeitdifferenz; hier in Minuten
$Zeitspanne = New-TimeSpan -Minutes 1

# Startzeit und Zeitspanne ergeben das Ende
$Ende = $Start + $Zeitspanne

# Endlosschleife
Do{
$Zeitanzeige = New-TimeSpan -Start $(Get-Date) -End $Ende
$Zeit = "{0:D2}:{1:D2}" -f ($Zeitanzeige.Minutes), ($Zeitanzeige.Seconds)
#Write-Progress $Zeit

}
While((Get-date) -lt $Ende)

# Zeit ist abgelaufen; Jetzt können weiter Befehle abgearbeitet werden
Write-Host "Wartezeit beendet"