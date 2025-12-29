# Set-Location $PSScriptRoot
# Get-Job | Remove-Job -Force
# $uaytrigger = New-JobTrigger -Daily -At "3:35 PM" -DaysInterval 3
# $uayjoboptions = New-ScheduledJobOption -StartIfOnBattery -ContinueIfGoingOnBattery
# Register-ScheduledJob -Name UayScheduledJob -ScriptBlock {Get-Process} -Trigger $uaytrigger -ScheduledJobOption $uayjoboptions
# Get-ScheduledJob | Select-Object *
# Get-JobTrigger -Name UayScheduledJob | Select-Object *

#---------------------------------------------------------------------

# Get-JobTrigger -Name UayScheduledJob | Disable-JobTrigger
# Disable-ScheduledJob -Name UayScheduledJob

# Get-JobTrigger -Name UayScheduledJob | Enable-JobTrigger
# Enable-ScheduledJob -Name UayScheduledJob

# Get-Job
# Receive-Job UayScheduledJob