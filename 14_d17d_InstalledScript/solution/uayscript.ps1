
<#PSScriptInfo

.VERSION 1.0

.GUID efe27ee0-9b14-4acd-a4f6-1ca3daac0a50

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
Param()

function uayscript1{
    process{
        Write-Host "Test-Uayfuncinscript1"
    }
}
function uayscript2{
    process{
        Write-Host "Test-Uayfuncinscript2"
    }
}

Write-Host "Running`n"
uayscript1
uayscript2
