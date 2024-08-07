Write-Host "Parameters are: $args"

Write-Host "Your ordered words are: $($args | Sort-object -Property -Length)" 