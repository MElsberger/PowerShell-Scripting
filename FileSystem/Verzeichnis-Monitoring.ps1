# .SYNOPSIS
# Überwachung des Ordners Testfreigabe 
 
# .DESCRIPTION
# Überwachung des Ordners Testfreigabe und Mitteilung über einer Änderung ausgeben
# Skript läuft mit einer Endlosschleife
 
# .PARAMETER
# $folder, $timeout, $FileSystemWatcher
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code ##
# Das Vereichnis muss vorab vorhanden sein.
$folder = 'C:\'
$timeout = 10
$FileSystemWatcher = New-Object System.IO.FileSystemWatcher $folder

# Ein Manueller Abbruch des Skript erfolge über die Tastenkombination CTRL + C
Write-Host "Press CTRL+C to abort monitoring $folder"

# Endlosschleife
while ($true) {
 $result = $FileSystemWatcher.WaitForChanged('all', $timeout)
 if ($result.TimedOut -eq $false)
 {
# Ausgabe, was verändert wurde
 Write-Warning ('File {0} : {1}' -f $result.ChangeType, $result.name)
 }
}
# Programm wurde abgebrochen
Write-Host 'Monitoring aborted.'