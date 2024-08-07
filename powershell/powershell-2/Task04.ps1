param ([string]$name = "unknown", [int]$hellos = 1)

while ($val -ne $hellos) {
    $val++
    Write-Host "Hello" $name
}