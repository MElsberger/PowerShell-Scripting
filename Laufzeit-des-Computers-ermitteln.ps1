# .SYNOPSIS
# Wie lang läuft der Computer bzw. Server bereits
 
# .DESCRIPTION
# Damit wird die Laufzeit des Computers ermittelt
 
# .PARAMETER
# $Info, $Start, $Time, $Computername
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code 

#Von welchem PC soll die Laufzeit ermittelt werden
$Info = Get-WmiObject -Class Win32_OperatingSystem -Computername $env:COMPUTERNAME

#Angabe des Computernames
$Computername = $env:COMPUTERNAME

#Zeit des letzten Neutstartes ermitteln
$Start = $Info.ConvertToDateTime($Info.LastBootUpTime) 

# 
Write-Host ""Write-Host “Letzter Neustart des Computers $Computername war am: “$Start.ToString()

#Zeitdifferenz berechnen
$Time = (Get-Date) – $Start #Ausgabe der Laufzeit

#Ausgabe der Zeitdifferenz
Write-Host ""
Write-Host “Laufzeit:” $Time.Days “Tage,” $Time.Hours “Stunden,” $Time.Minutes “Minuten,” $Time.Seconds “Sekunden”