#skript zum ermitteln der Laufzeit des Computers

#Von welchem PC soll die Laufzeit ermittelt werden
$Computername = “a333-els”
$Info = Get-WmiObject -Class Win32_OperatingSystem -Computername 

$Computername#Zeit des letzten Neutstartes ermitteln

$Start = $Info.ConvertToDateTime($Info.LastBootUpTime)Write-Host ""Write-Host “Letzter Neustart des Computers $Computername war am: “$Start.ToString()#Zeitdifferenz berechnen

$Time = (Get-Date) – $Start#Ausgabe der Laufzeit

Write-Host ""
Write-Host “Laufzeit:” $Time.Days “Tage,” $Time.Hours “Stunden,” $Time.Minutes “Minuten,” $Time.Seconds “Sekunden”
