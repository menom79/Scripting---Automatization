param([string]$foldername="",[string]$newname="")
$extension=(Split-Path -Path $newname -Leaf).Split(".")[1]
$basename=(Split-Path -Path $newname -Leaf).Split(".")[0]

if (Test-Path $foldername)
{
    $count = (Get-ChildItem $foldername).Count 
    $answer = (Read-Host "All [$count] files will be renamed with name $newname. [Yes/No]")
    
    if ($answer -eq "Yes")
    {
        $files = Get-ChildItem -Path $foldername
        $num = 1
	 
        foreach ($file in $files)
        {    
  	        $name = $basename + $_ + "-" + $num + "." + $extension 
		    Rename-Item ($file.FullName) $name
            $num++    
        }
        Write-Host "Files were renamed. New names are:"
        $newfilename=(Get-ChildItem -Path $foldername)
        foreach($file in $newfilename)
                {$file.Name}
    }

    elseif ($answer -eq "No") {
        Write-Host "No file name is changed"
    }
    else
    {
        Write-Host "Terminated"
    }
}
else
{
    Write-Host "The $foldername folder does not exist"
}