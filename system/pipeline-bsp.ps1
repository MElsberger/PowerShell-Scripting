
#Praxis Beispiel zur Verwendung der Pipe

#Es sollen alle .exe Daten die größer als 20 KB sind mit ihrem Namen und deren Größe ausgegeben werden. 
#Zusätzlich soll die Ausgabe in absteigender Reihenfol-ge in ein .html Dokument konvertiert werden. 
#Die Entwicklung der Aufgabe erfolgt in 6 Schritten.





Get-ChildItem -Path C:Windows*.exe | Where-Object { $_.Length -gt 20kb } | 

Select-Object -Property Length, Name | Sort-Object -Property Length -Descending | 

ConvertTo-Html -Body "<h1>Ausgabe Dateien </h1>" | 

Set-Content -Path C:\Users\test\Documentsdateien.html
