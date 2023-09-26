Import-Csv -Path 'C:\Employees.csv' | foreach {
    $NewUserParameters = @{
        'GivenName' = $_.FirstName
        'Surname' = $_.LastName
        'Name' = $_.UserName
        'AccountPassword' = (ConvertTo-SecureString 'p@$$w0rd10' -AsPlainText -Force)
    }

    New-AdUser @NewUserParameters
}