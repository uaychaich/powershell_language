# Set-Location $PSScriptRoot
# Get-Command -Noun PSProvider
# Get-Command -Noun PSDrive
# Get-PSProvider | Format-Table
# Get-PSDrive | Format-Table

#---------------------------------------------------------------------

# Set-Location variable:
# Get-ChildItem 
# New-Item -Name uayvar -Value kiki 
# Get-ChildItem 
# $uayvar 
# Remove-Item -Path Variable:\uayvar
# Get-ChildItem 

#---------------------------------------------------------------------

# Set-Location $PSScriptRoot
# New-Item -Path .\uaydirectory -ItemType Directory
# New-PSDrive -Name UayRoot -PSProvider FileSystem -Root "$PSScriptRoot\uaydirectory" 
# Get-PSDrive
# Set-Location UayRoot:

#---------------------------------------------------------------------

