# PC Informationen mit der Windows PowerShell auslesen und in eine Datei speichern.
# created by IT-Learner.de
# Neue Datei erzeugen

New-Item -ItemType "file" -Path "t:\PowerShell-Scriptepcinfo1.txt" -Force

# Pfad wechseln

Set-Location -Path t:\PowerShell-Scripte

#Informationen auslesen und in Variablen speichern$pcinfo = Get-WmiObject win32_processor

$pcinfo2 = Get-WMIObject -class Win32_Physicalmemory
$pcinfo3 = Get-WmiObject Win32_LogicalDisk#Inhalte in die Textdatei schreiben
$pcinfo > pcinfo1.txt > $pcinfo2 > $pcinfo3 > pcinfo1.txt

# Link zum kompletten Artikel 
# https://it-learner.de/computerinformationen-auslesen-und-in-eine-textdatei-speichern/
