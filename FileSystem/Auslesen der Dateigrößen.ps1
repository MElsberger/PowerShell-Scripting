<#
.SYNOPSIS
Auslesen der Dateigrößen

.DESCRIPTION
Mit diesem Script kann in einem bestimmten Verzeichnis 
die Größe der Dateien ausgelesen werden

.PARAMETER
$location für die Pfad, 
$length für die Dateigröße
$subdir für das auslesen der Unterverzeichnisse

.EXAMLE
Get-LargeFiles -location d:\ -length 10 -subdir

.NOTES
Falls subdir aktiv werden die Unterverzeichnisse ebenfalls ausgelesen

.LINK
Markus Elsberger 
IT-Learner.de

#>

function Get-LargeFiles ($location = "k:\", $length=100, [switch]$subdir)
{
    $schalter=$false
        IF($subdir)
        {
        $schalter=$True
    }
        Get-ChildItem $location -Recurse:$schalter | Where-Object {$_.Length -ge $length}
    }

Get-LargeFiles -location d:\ -length 10 -subdir
