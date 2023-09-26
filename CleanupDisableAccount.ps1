$When = ((Get-Date).AddDays(-90)).Date
Get-ADUser -Filter {LastLogonDate -lt $When} -Properties * | select-object samaccountname,givenname,surname,LastLogonDate | Disable-ADAccount