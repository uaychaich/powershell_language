# Set-Location $PSScriptRoot
# Start-Job -ScriptBlock {"Hello";Start-Sleep -Seconds 120; "Background job completed at $(Get-Date)"} -Name UayJob 
# Stop-Job -Name UayJob
# Receive-Job -Name UayJob
# Get-Job -Name UayJob -IncludeChildJob
# Remove-Job -Name UayJob 
#------------------------------------------------------

# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force 
# Start-Job -ScriptBlock {Start-Sleep -Seconds 120;Set-Content -Path "C:\temp\output.txt" -Value "Background job completed at $(Get-Date)" } `
#           -Name UayJob | Out-Null
# Wait-Job -Name UayJob
# Get-Content -Path "C:\temp\output.txt"
# Remove-Job -Name UayJob

#------------------------------------------------------

# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force 
# Start-Job -ScriptBlock {Start-Sleep -Seconds 120;Set-Content -Path "C:\temp\output.txt" -Value "UayJob1:Background job completed at $(Get-Date)" } `
#           -Name UayJob1 | Out-Null
# Start-Job -ScriptBlock {Start-Sleep -Seconds 120;Set-Content -Path "C:\temp\output.txt" -Value "UayJob2:Background job completed at $(Get-Date)" } `
#           -Name UayJob2 | Out-Null
# Start-Job -ScriptBlock {Start-Sleep -Seconds 120;Set-Content -Path "C:\temp\output.txt" -Value "UayJob3:Background job completed at $(Get-Date)" } `
#           -Name UayJob3 | Out-Null
# Wait-Job -Name UayJob1,UayJob2,UayJob3 -Any
# Get-Content -Path "C:\temp\output.txt"
# Wait-Job -Name UayJob1,UayJob2,UayJob3 -Timeout 3
# Remove-Job -Name UayJob1,UayJob2,UayJob3

#------------------------------------------------------

# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force
# Start-ThreadJob -ScriptBlock {Start-Sleep -Seconds 120; "Thread job completed at $(Get-Date)"} -Name UayThreadJob
# 1..5| ForEach-Object -Parallel { Start-Sleep -Seconds 120; "$_ :Thread job completed at $(Get-Date)"} -AsJob 

#------------------------------------------------------

# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force
# Get-Process -Name pwsh
# Start-Job -ScriptBlock {Start-Sleep -Seconds 120; "Background job completed at $(Get-Date)"} -Name UayJob 
# Get-Process -Name pwsh

#------------------------------------------------------

# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force
# Get-Process -Name pwsh
# Start-ThreadJob -ScriptBlock {Start-Sleep -Seconds 120; "Thread job completed at $(Get-Date)"} -Name UayThreadJob
# Get-Process -Name pwsh

#------------------------------------------------------

# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force
# Write-Host "Starting 10 background jobs..."
# Measure-Command {
#     1..100 | Start-Job -ScriptBlock {Start-Sleep -Seconds 120; "Background job completed at $(Get-Date)"} -Name "UayJob$_"
# }
# Write-Host "Starting 10 thread jobs..."
# Measure-Command {
#     1..100 | Start-ThreadJob -ScriptBlock {Start-Sleep -Seconds 120; "Thread job completed at $(Get-Date)"} -Name "UayThreadJob$_"
# }

#------------------------------------------------------

# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force
# $uaydata = "Uaychai"
# Start-Job -ScriptBlock {Start-Sleep -Seconds 120; "$uaydata Background job completed at $(Get-Date)"} -Name UayJob1
# Start-ThreadJob -ScriptBlock {Start-Sleep -Seconds 120; "$uaydata Thread job completed at $(Get-Date)"} -Name UayThreadJob1
# Start-Job -ScriptBlock {Start-Sleep -Seconds 120; "$using:uaydata Background job completed at $(Get-Date)"} -Name UayJob2
# Start-ThreadJob -ScriptBlock {Start-Sleep -Seconds 120; "$using:uaydata Thread job completed at $(Get-Date)"} -Name UayThreadJob2
# Wait-Job -Name UayJob1,UayThreadJob1,UayJob2,UayThreadJob2
# Receive-Job -Name UayJob1,UayThreadJob1,UayJob2,UayThreadJob2 -Keep

#------------------------------------------------------
