# Set-Location $PSScriptRoot
# Get-Command -Noun PSSession
# Invoke-Command -ComputerName localhost -ScriptBlock { Get-Process -Name pwsh }
# $result=Invoke-Command -ComputerName localhost -ScriptBlock { Get-Process -Name pwsh }
# $result | Format-Table -AutoSize
#-------------------------------------------------

# Set-Location $PSScriptRoot
# Invoke-Command -ComputerName localhost -ScriptBlock { $s1=25 }
# Invoke-Command -ComputerName localhost -ScriptBlock { "`$s1=$s1" }

# $uaysession = New-PSSession -ComputerName localhost 
# Invoke-Command -Session $uaysession -ScriptBlock {$s2=25}
# Invoke-Command -Session $uaysession -ScriptBlock {"`$s2=$s2"}

#-------------------------------------------------

# Set-Location $PSScriptRoot
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
# Get-Job | Remove-Job -Confirm
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
# Get-Job | Remove-Job -Confirm
# $uaysession = New-PSSession -Name UaySession -ComputerName localhost
# Get-PSSession | Format-Table -AutoSize
# Invoke-Command -Session $uaysession -ScriptBlock {
#     Start-Sleep -Seconds 15
#     "Background job complete"
#     Get-Process -Name pwsh
# } -AsJob -JobName "UayRemoteJob1"
# Disconnect-PSSession -Session $uaysession
# Receive-PSSession -Session $uaysession -OutTarget Job -JobName "UayRemoteJob1"
# Get-Job -Name "UayRemoteJob1"
# Get-PSSession | Format-Table -AutoSize
# Receive-Job -Name "UayRemoteJob1" -Wait -AutoRemoveJob

#-------------------------------------------------


