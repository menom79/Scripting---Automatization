param([string]$folder="",[string]$file="", [int]$num=0)

if (Test-Path $folder)
{
    Write-Host "The folder $folder already exists."
}
else
{
    Write-Host "There is no folder named $folder, now it is being created"
    New-Item -Path. -Name "$folder" -ItemType "directory" | Select-Object -First 0
    1.. $num | ForEach-Object {New-Item -path $folder -Name "$_$file" -ItemType "file" } | Select-Object -First 0
    Write-Host "$num file(s) has(ve) been created in the folder $folder"   
    $filelist = (Get-ChildItem -Path $folder)
    foreach($i in $filelist)
        {$i.Name}
}