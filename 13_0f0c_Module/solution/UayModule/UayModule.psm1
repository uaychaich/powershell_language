$uayvar="Uaychai"
function Test-UayFunc1 {
    process{
        Write-Host "Test-UayFunc1"
    }
}
function Test-UayFunc2 {
    process{
        Write-Host "Test-UayFunc2"
        Test-UayFunc3
    }
}
function Test-UayFunc3 {
    process{
        Write-Host "Test-UayFunc3 $uayvar"
    }
}

Set-Alias -Name tuf1 -Value Test-UayFunc1
Set-Alias -Name tuf2 -Value Test-UayFunc2

# Export-ModuleMember -Function Test-UayFunc1,Test-UayFunc2 -Alias tuf1,tuf2 -Variable uayvar
# Export-ModuleMember -Variable uayvar