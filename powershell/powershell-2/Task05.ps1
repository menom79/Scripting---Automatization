param ([string]$ip = "192.168.1.1", [int]$times = 1)

Write-Host "I will ping address $ip $times time, Okay?"

$a = Read-Host "[Y/n]"
if ($a -eq "y")
{
    while ($val -ne $times)
    {
        $val++
        Write-Host "try $val to ping" $ip
    }
}
else
{
    Write-Host "Terminated"
}