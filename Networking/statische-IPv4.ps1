# .SYNOPSIS
# Statisch Route erstellen
 
# .DESCRIPTION
# Import von Benutzer Daten aus einer CSV, Account anlegen, Benuter muss das Passwort
# beim ersten mal Anmelden Ã¤ndern
 
# .PARAMETER
# $interfaceIndex, $destination, $Nexhop
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de


# Alle vorhanden Routen Auflisten 
Get-NetRoute -AddressFamily IPv4

# Einlesen der nötigen Parameter

$interfaceIndex = Read-Host -Prompt "Bitte den Interface Index eingeben"

$destination = Read-host -Prompt "Bitte die IP-Adresse und Subnetzmaske in der Form x.x.x.x/x eingeben"

$NextHop = Read-host -Prompt "Bitte das Gateway angeben"

## Code ausführen ##

New-NetRoute -DestinationPrefix $destination -InterfaceIndex $interfaceIndex -NextHop $NextHop
