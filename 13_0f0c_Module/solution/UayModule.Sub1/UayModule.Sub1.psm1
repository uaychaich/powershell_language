function Test-UaySubFunc1{
    process{Write-Host "UaySubFunc1"}
}
function Test-UaySubFunc2{
    process{Write-Host "UaySubFunc2"}
}
function Test-UaySubFunc3{
    process{Write-Host "UaySubFunc3";Test-UayFunc2}
} 