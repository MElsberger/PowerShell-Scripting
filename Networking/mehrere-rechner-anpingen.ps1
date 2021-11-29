# Angabe der verschiedenen Rechner

$ping = Test-Connection PC1, DS412, P215LE2 -Quiet

foreach($p in $ping)
 { 
          if ($p -eq $false) 
              {
               Write-Host "PC nicht erreichbar!"
              }

}
