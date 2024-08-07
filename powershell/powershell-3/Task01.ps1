param ([string]$folder = "")

if (Test-Path $folder)
{
    $list = (Get-ChildItem -Path $folder)
    $cntf = $list.Count
    Write-Host "$cntf files in the folder $folder`n"
    Write-Host "Name`n----"
    foreach($file in $list)
        {$file.Name}
}
else 
{
    Write-Host "Sorry, $folder does not exist"
}