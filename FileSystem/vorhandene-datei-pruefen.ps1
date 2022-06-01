# Prüfen, ob eine bestimmte Datei bereits existiert.

# Angabe der zu prüfenden Datei 
$Sicherung = "C:\Sicherung\Log-01.txt"
If (Test-Path $Sicherung)
{
# Datei iste nicht vorhanden!
    Write-Host -BackGroundColor Green "Die Logdatei $($Sicherung) ist vorhanden."
}
else
{
# Datei ist vorhanden 
    Write-Host -BackgroundColor Red "Die Logdatei $($Sicherung) ist noch nicht vorhanden."
}
