# With this Code you can test open Ports
 
# .PARAMETER
# $adresse, $startport, $endport
 
# .NOTES
# Author:Markus Elsberger
# Web:https://www.it-learner.de

## Code ##


#Festlegen der einzelnen Variablen 
param 
(
$adresse = "192.168.178.1",
$startport = 442,
$endport = 445

)

# Abfragen der einzelnen Ports
foreach ($port in $startport..$endport) {

If (($a=Test-NetConnection -ComputerName $adresse -Port $port -WarningAction SilentlyContinue).tcpTestSucceeded -eq $true)

#Ausgabe im Falle eines offen Ports
{ Write-Host -BackgroundColor Red "TCP port $port ist offen!"}
else
#Ausgbe im Falles eines geschlossenen Ports 
{ Write-Host -BackgroundColor Green "TCP Port $port ist geschlossen!"}

}
