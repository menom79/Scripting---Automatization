param([string]$folder="",[string]$file="")
$path = $folder + "\$file"

if (Test-Path $path)
{
    Write-Host "The file $file already exists"
}
else 
{
    $newfile = Read-Host "Create the file $file ? [Yes/No]"
    if ($newfile -eq "Yes"){
        New-Item -Path $path -ItemType File
        Write-Host "Congratulations!!! The file $file has been created in the $folder folder"
    }
    else 
    {
        Write-Host "Okay, the file $file is not created"
    }
}