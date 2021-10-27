# .SYNOPSIS
# Alte Dateien ausgeben 
 
# .DESCRIPTION
# With this Code you can ask the File for the
# oldest Data
 
# .PARAMETER
# $folder, $datenabwann, $wievieleausgabe
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code ##

# Auswahl des Laufwerks
$folder = Read-Host -Prompt "Bitte das gewuenscht Laufwerk angeben!"

Set-Location $folder

#Auswahl ab wann die Dateien angezeigt werden sollen auch wie viele

$datenabwann = Read-Host -Prompt "Bitte das Datum ab wenn in der Form dd.mm.yyyy angeben!"
$wievieleausgaben = Read-Host -Prompt "Wieviel Daten sollen angezeigt werden?"

Get-ChildItem | Where-Object {$_.LastWriteTime -gt (get-Date $datenabwann)} | Select-Object -Last $wievieleausgaben

## Kompletter Artikel
#https://it-learner.de/wie-kann-man-sich-mit-der-windows-powershell-die-aeltesten-oder-auch-neuesten-dateien-auflisten-lassen/