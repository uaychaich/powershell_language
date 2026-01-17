# New-ScriptFileInfo -Path .\uayscript.ps1 -Author Uaychai -Description "UayScript Naja" 

#-----------------------------------------------------------------------

# Test-ScriptFileInfo -Path .\Test-Uayscript.ps1 

#-----------------------------------------------------------------------

# $Env:PSModulePath

#-----------------------------------------------------------------------

# Get-InstalledScript

#-----------------------------------------------------------------------

# Get-PSRepository
# Register-PSRepository -Name UayRepScript -SourceLocation \\uaydevkit\script  -PublishLocation \\uaydevkit\script

#-----------------------------------------------------------------------

# Publish-Script -Path .\Test-Uayscript.ps1 -Repository UayRepScript
# Publish-Script -Path .\uayscript.ps1 -Repository UayRepScript

#-----------------------------------------------------------------------

# Find-Script -Repository UayRepScript

#-----------------------------------------------------------------------

# Install-Script -Name Test-Uayscript -Repository UayRepScript -Scope CurrentUser
# Install-Script -Name uayscript -Repository UayRepScript -Scope CurrentUser

#-----------------------------------------------------------------------

# Save-Script -Name Test-Uayscript -Repository UayRepScript -Path C:\saved
# Save-Script -Name uayscript -Repository UayRepScript -Path C:\saved

#-----------------------------------------------------------------------

# Uninstall-Script -Name Test-Uayscript
# Uninstall-Script -Name uayscript