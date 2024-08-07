param([string]$filename)

if (Test-Path $filename)
{
    $urls = Get-Content -Path $filename 
    foreach($url in $urls)
    {
        Start-Process $url
    }
}

else
{
    Write-Host "Error!!!"
}