# Process Name festlegen
$ProcessName = "notepad"
# Programm festlegen
$Program = "notepad.exe"$ProcessON = ""
# Auslesen, ob das Programm bereits ausgeführt wird
$ProcessON = Get-Process | Where-Object {$_.ProcessName -eq $ProcessName}
If($ProcessON -eq $null){
#Programm starten
start $Program
} 
else {
Write-Host "Das Programm wird ausgeführt"
}
