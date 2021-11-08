# Das Verzeichnis muss natürlich existieren
# Über die Endlose While Schleife wird geprüft, ob es Änderungen am Verzeichnis gab.
$folder = ’l:Projekte’
$timeout = 10

$FileSystemWatcher = New-Object System.IO.FileSystemWatcher $folder
Write-Host ”Press CTRL+C to abort monitoring $folder”
while ($true) {
$result = $FileSystemWatcher.WaitForChanged(‘all’, $timeout)
if ($result.TimedOut -eq $false)
{

Write-Warning (‘File {0} : {1}’ -f $result.ChangeType, $result.name)

}
}
Write-Host ’Monitoring aborted.’

#More Information
#https://it-learner.de/mithilfe-der-windows-powershell-einen-ordner-bzw-ein-verzeichnis-auf-veraenderungen-ueberwachen/
