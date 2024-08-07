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
        $menom = $user_surname.ToLower() + $user_name.ToLower()
        $full_name = $name + " " + $surname
        $user_create = Read-Host "A new local account $menom will be created for $full_name, [Yes/No]: " 

        if ($user_create -eq "Yes")
        {
           New-LocalUser -Name $menom -Fullname $full_name -Description "New local user" -NoPassword  
           $num += 1
        }

        elseif ($user_create -eq "No")
        {
            Write-Host "File is not created"
            $num += 0
        }         
    }
}
else
{
    Write-Host "Sorry, $filename does not exist."
}
Write-Host "$num file is created."