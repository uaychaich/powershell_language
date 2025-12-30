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

# Set-Location $PSScriptRoot
# Get-PSSession | Remove-PSSession -Confirm
# $uaysession = New-PSSession -Name UaySession -ComputerName localhost
# Get-PSSession | Format-Table -AutoSize
# Invoke-Command -Session $uaysession -ScriptBlock {
#     Start-Sleep -Seconds 15
#     "Background job complete"
#     Get-Process -Name pwsh
# } -AsJob -JobName "UayRemoteJob1" 
# Get-Job -Name "UayRemoteJob1"
# Receive-Job -Name "UayRemoteJob1" -Wait -AutoRemoveJob

#-------------------------------------------------

# Set-Location $PSScriptRoot
# Get-PSSession | Remove-PSSession -Confirm 
# $uaysession = New-PSSession -Name UaySession -ComputerName localhost
# Get-PSSession | Format-Table -AutoSize
# Invoke-Command -Session $uaysession -ScriptBlock {
#     Start-Sleep -Seconds 15
#     "Background job complete"
#     Get-Process -Name pwsh
# } -AsJob -JobName "UayRemoteJob1" 
# Disconnect-PSSession -Session $uaysession
# Write-Host "Session disconnected. Checking job status..."
# Get-Job -Name "UayRemoteJob1"
# Get-PSSession
# Receive-PSSession -Session $uaysession -OutTarget Job -JobName "UayRemoteJob1"
# Write-Host "Reconnected to session. Checking job status..."
# Get-Job -Name "UayRemoteJob1"
# Get-PSSession
# Receive-Job -Name "UayRemoteJob1" -Wait -AutoRemoveJob

#-------------------------------------------------


