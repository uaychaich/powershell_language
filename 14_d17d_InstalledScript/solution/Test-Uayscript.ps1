
<#PSScriptInfo

.VERSION 1.0

.GUID 8d1bf163-dc17-47a3-bb0d-53d5caa5ae55

.AUTHOR Uaychai

.COMPANYNAME

.COPYRIGHT

.TAGS

.LICENSEURI

.PROJECTURI

.ICONURI

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES


.PRIVATEDATA

#>

<# 

.DESCRIPTION 
 UayScript Naja 

#> 
Param([Parameter(Mandatory=$true)][string]$input1)

begin{
    Write-Host "Test-Uayscriptfunct1 Begin"
}
process{
    Write-Host "Test-Uayscriptfunct1 Process $input1"
}
end{
    Write-Host "Test-Uayscriptfunct1 End"
}

