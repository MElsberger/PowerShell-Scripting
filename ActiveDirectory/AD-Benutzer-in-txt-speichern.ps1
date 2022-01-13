#Alle Benutzer der Abteilung "it-learner" in eine Textdatei speichern

Get-ADUser -Filter "Department -like 'it-learner'" | out-file aduser.txt
