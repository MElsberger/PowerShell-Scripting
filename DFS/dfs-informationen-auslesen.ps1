Get-Command -Module DFSN
Get-DfsnServerConfiguration -ComputerName dc1
Get-DfsnRoot | Format-List
Get-DfsnFolder -Path \dc1\doc-schule* | Format-List
