# New-ModuleManifest $PSScriptRoot\UayModule\UayModule.psd1 
#---------------------------------------------------------------------
# $env:PSModulePath
#---------------------------------------------------------------------
# $PSModuleAutoLoadingPreference='All'
# $PSModuleAutoLoadingPreference='ModuleQualified'
# $PSModuleAutoLoadingPreference='None'
#---------------------------------------------------------------------
# Import-Module -Name .\UayModule\UayModule.psd1
# Import-Module -Name .\UayModule.Sub1\UayModule.Sub1.psd1
#---------------------------------------------------------------------
# Get-Module
# Get-Module -All
#---------------------------------------------------------------------

# Register-PSRepository -Name UayRep -SourceLocation \\uaydevkit\module -PublishLocation \\uaydevkit\module
# Get-PSRepository

#---------------------------------------------------------------------

# Publish-Module -Path 'C:\Project\powershell_language\13_0f0c_Module\solution\UayModule' -Repository UayRep 
# Publish-Module -Path 'C:\Project\powershell_language\13_0f0c_Module\solution\UayModule.Sub1' -Repository UayRep 

# Publish-Module -Name 'UayModule' -Repository UayRep
# Publish-Module -Name 'UayModule.Sub1' -Repository UayRep

#---------------------------------------------------------------------

# Find-Module -Repository UayRep

#---------------------------------------------------------------------

# Install-Module -Name UayModule -Repository UayRep -Scope CurrentUser
# Install-Module -Name UayModule.Sub1 -Repository UayRep -Scope CurrentUser

#---------------------------------------------------------------------

# Check from ModuleList
# Test-ModuleManifest -Path 'C:\Users\uaychai\Documents\PowerShell\Modules\UayModule\0.0.1\UayModule.psd1'

#---------------------------------------------------------------------

# Uninstall-Module -Name UayModule 
# Uninstall-Module -Name UayModule.Sub1 

#---------------------------------------------------------------------

# Save-Module -Name UayModule -Repository UayRep -Path c:\saved
# Save-Module -Name UayModule.Sub1 -Repository UayRep -Path c:\saved

#---------------------------------------------------------------------