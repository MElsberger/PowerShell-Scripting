
# .SYNOPSIS
# # Das Verzeichnis muss natürlich existieren
# Über die Endlose While Schleife wird geprüft, ob es Änderungen am Verzeichnis gab
 
# .DESCRIPTION
# Verzeichnis überwachen mithilfe einer endlose While Schleife
 
# .PARAMETER
# $folder, $timeout, $FileSystemWatcher
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code ##

# Variabel definieren
$folder = 'C:\test'
$timeout = 10

$FileSystemWatcher = New-Object System.IO.FileSystemWatcher $folder

# Manueller Abruch der Schleife
Write-Host ”Press CTRL+C to abort monitoring $folder”
 while ($true){
 $result = $FileSystemWatcher.WaitForChanged('all', $timeout)
 
 
 
 if ($result.TimedOut -eq $false)
 {
# Aenderungen am Verzeichnis werden ausgegeben!
 Write-Warning ('File {0} : {1}' -f $result.ChangeType, $result.name)
 
 }
 }
Write-Host "Monitoring aborted."
