#Pfad abfragen
$pfad = Read-Host -prompt "Wo wollen Sie nach großen Dateien suchen"

# Pfad festlegen
Set-Location $pfad

# Auflisten der 20 größten Dateien
get-childitem -Recurse | Sort-Object -Descending -Property length | Select -First 20 LastWriteTime,name,

@{Name="Megabytes";Expression={[Math]::round($_.length / 1MB, 2)}} | Out-GridView
