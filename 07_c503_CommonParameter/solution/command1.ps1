Set-Location -Path "$PSScriptRoot/files"
#----------------------------------------------

#Get-ChildItem -OutVariable filelist1
#$filelist2 = Get-ChildItem
#$filelist1
#$filelist2

#----------------------------------------------

#New-Item -Name "newfile1.txt" -ItemType "File" -Value "This is a new file." 
#New-Item -Name "newfile2.txt" -ItemType "File" -Value "This is a new file." -Verbose

#----------------------------------------------

# Write-Host "`$DebugPreference=$DebugPreference"
# Write-Host "`$InformationPreference=$InformationPreference"
# Write-Host "`$WarningPreference=$WarningPreference"
# Write-Host "`$ErrorActionPreference=$ErrorActionPreference"

# $DebugPreference = "SilentlyContinue"
# Remove-Item -Path "newfile1.txt" `
#     -InformationAction Continue -WarningAction Continue -ErrorAction Continue -ProgressAction Continue -Debug `
#     -InformationVariable infoVar -WarningVariable warnVar -ErrorVariable errVar; 
# Write-Host "`$inforVar=$infoVar`n`$warnVar=$warnVar`n`$errVar=$errVar`n`$Error=$Error";

#----------------------------------------------

# Remove-Item -Path .\file1.txt -WhatIf
# Remove-Item -Path .\file2.txt -Confirm

#----------------------------------------------

# Get-ChildItem -PipelineVariable fileitem | 
#     Get-Content -PipelineVariable lineitem | 
#     ForEach-Object {Write-Host "File: $($fileitem.Name) Line: $lineitem"}

#----------------------------------------------

# 1..4 | ForEach-Object {
#         Write-Host "$($_): First"; $_
#       }  | ForEach-Object {
#                         Write-Host "$($_): Second" }

# 1..4 | ForEach-Object {
#         Write-Host "$($_): First"; $_
#       } -OutBuffer 0 | ForEach-Object {
#                         Write-Host "$($_): Second" }

#----------------------------------------------