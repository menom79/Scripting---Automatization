$folder = Read-Host "Please, give the folder to search"

Write-Host (Get-ChildItem -file $folder).Count "files found at" $folder
