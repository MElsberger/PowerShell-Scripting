# .SYNOPSIS
# Script zum einbinde einer neuen Festplatte
 
# .DESCRIPTION
# Script zum einbinden einer neuen Festplatte 
# Grundsätzliche Konfiguration, MBR, Online, NTFS
 
# .PARAMETER
# $startzeit, $endzeit, $datum, $AnzahlTage
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code ##



Get-Disk

Set-Disk 2 -IsOffline $false

Initialize-Disk 2 -PartitionStyle MBR

New-Partition -DiskNumber 2 -UseMaximumSize -IsActive -DriveLetter G

Format-Volume -DriveLetter G -FileSystem NTFS -NewFileSystemLabel Workspace