# .SYNOPSIS
# Berechnung des freien Speicherplatzes ein beliebigen Festplatte
 
# .DESCRIPTION
# Abfrage über das Laufwerk welches nach dem Speicherplatz abgefragt werden soll
# Speicherplatz der Festplatte berechnen und anschließen den 
# verfügbaren Speicher in Prozent ausgeben.
 
# .PARAMETER
# $driveletter, $Drive, $Prozent
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de-

## Code 


#Akutellen Computernamen auslesen
$PCname = (Get-WmiObject Win32_computersystem).Name

#Speicherplatz der Festplatte c: auslesen!

$Speicherplatzverbrauch = Get-WmiObject Win32_LogicalDisk -ErrorAction SilentlyContinue -Filter "name='c:'" | % {($_.freespace / $_.size)}

#Schleife zur Speicherberechnung

if ($Speicherplatzverbrauch -le '0.1') {

#Speicherplatz weniger als 10%
$Speicherplatz ="HDD Speicherplatz auf c: wird knapp!"

Write-Host $Speicherplatz
}
else {
#Speicherplatz noch größer als 10%
$Speicherplatz ="HDD Speicherplatz auf c: noch mehr als 10%"

Write-Host $Speicherplatz
}