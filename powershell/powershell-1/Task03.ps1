$num1 = Read-Host "Give the first integer"
$num2 = Read-Host "Give the second integer"

$sum = [int]$num1 + [int]$num2
$sub = [int]$num1 - [int]$num2
$mul = [int]$num1 * [int]$num2
$div = [int]$num1 / [int]$num2

Write-Host "Sum is", $sum
Write-Host "Substraction is", $sub
Write-Host "Multiplication is", $mul
Write-Host "Division is", $div
