$mod = Get-Module -ListAvailable | where {$_.HelpInfoUri}

foreach($c in $mod){
$helpfile = dir ($c.ModuleBase + "\*helpinfo*.xml")

if($helpfile -and (Test-Path $c.ModuleBase)){
$z = [xml](Get-Content "$helpfile")

if($z){
$c.Name + " Version: " + $z.HelpInfo.SupportedUICultures.UICulture.UICultureVersion
}
$helpfile = ""
}
else{"==> Hilfedatei fehlt für $c"}
}
