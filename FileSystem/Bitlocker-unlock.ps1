## Passwort einlesen und Festpatte entsperren

$pass = Read-Host "Bitte Passwort eingeben" -AsSecureString

Unlock-BitLocker -MountPoint g: -Password $pass

## Festplatte sperren
Lock-BitLocker -MountPoint g:

## More Information
##https://it-learner.de/eine-verschluesselte-festplatte-mit-der-windows-powershell-entsperren-bzw-anschliessend-wieder-sperren/
