#Computername ändern und den PC neustarten
param(
$Computername=$(Read-Host -Prompt 'Wie soll der neue Computername lauten')
)
#Computer umbenennen
Rename-Computer -NewName $Computername Echo " Der Computer muss neu gestartet werden!"

#Computer neustarten
Restart-Computer
