param([string]$filename)

$num = 0

if (Test-Path $filename)
{
    Import-Csv $filename | ForEach-Object
    {
        $name = ($_.Firstname)
        $surname = ($_.Lastname)
        $user_name = $name.SubString(0,2) 
        $user_surname = $surname.SubString(0,4)
        $user = $user_surname.ToLower() + $user_name.ToLower()
        $num += 1

        Write-Host "Hello my colleague $name $surname, this is your new account: "
        Write-Host "$user" -ForegroundColor Green
    }
}
else
{
    Write-Host "Sorry, $filename does not exist" -ForegroundColor DarkRed
}
Write-Host "$num new accounts created succesfully" -ForegroundColor Yellow