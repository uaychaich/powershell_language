# Get-Command -Noun PSSession
#-------------------------------------------------

# Get-Process -Name pwsh
# Set-Location $PSScriptRoot
# Get-PSSession | Remove-PSSession -Confirm 
# $uaysession = New-PSSession -Name UaySession -ComputerName localhost
# Get-PSSession | Format-Table -AutoSize
# Invoke-Command -Session $uaysession -ScriptBlock {
#     Start-Sleep -Seconds 15
#     "Background job complete"
#     Get-Process -Name pwsh
# }
# Disconnect-PSSession -Session $uaysession | Format-Table -AutoSize
# Connect-PSSession -Session $uaysession | Format-Table -AutoSize
# Invoke-Command -Session $uaysession -ScriptBlock {
#     Start-Sleep -Seconds 15
#     "Background job complete again"
#     Get-Process -Name pwsh
# }
# Get-Process -Name pwsh

#-------------------------------------------------

# Enter-PSSession -Id 13
# Exit-PSSession

#-------------------------------------------------

