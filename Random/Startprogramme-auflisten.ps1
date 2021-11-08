#Alle Startprogramme auflisten und per Tabelle ausgeben lassen
Get-CimInstance -ClassName Win32_StartupCommand | Select-Object -Property Command, Description, User, Location | Out-GridView
