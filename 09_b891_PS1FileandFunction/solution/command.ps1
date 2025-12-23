Set-Location $PSScriptRoot

#--------------------------------------------------------------

# .\uayscript1.ps1 
# .\uayscript1.ps1 | Select-Object * | Format-List

#--------------------------------------------------------------

# Get-Verb
. .\uayscript2.ps1
# TestFunction1
# Get-UayChildItem
# Get-UayChildItem2 -param1 "sc" -param2 "This is a"
# Get-UayChildItem3 -param1 "The number is " -param2 23
# Get-UayChildItem3 -param1 "The number is " -param2 "abc"

# Get-UayChildItem4 
# 1..4 | Get-UayChildItem4 

# Get-UayChildItem5
# Get-Variable -Name x

# Get-UayChildItem6

# Get-UayChildItem7 "Yoda" "Naja" "Kiki", "Mome"

# 1..4 | Get-UayChildItem8
# Get-ChildItem | Get-UayChildItem8

# Get-UayChildItem10 -CarModel "TX999" -Color "Red"
# Get-UayChildItem10 -FlowerType "Rose" -Color "Red"
# Get-UayChildItem10 -CarModel "TX999" -FlowerType "Rose" -Color "Red"

# Get-UaychildItem11 -param1 "This is from Uaychai Kiki"
# Get-Help Get-UayChildItem11 -Full

# Get-UayChildItem12 -newparam "Yoda" 
# Get-Help Get-UayChildItem12 -Full

# Get-UayChildItem13 -param "Yoda1"
# Get-UayChildItem13 -pr "Yoda2"
# Get-UayChildItem13 -pm "Yoda3"

# Get-UayChildItem14 -param "*ps1"
# Get-Help Get-UayChildItem14 -Full

# Get-UayChildItem15 -param $null

# Get-UayChildItem16 -param $null
# Get-UayChildItem16 -param ""

# Get-UayChildItem17 -firstname "Uaychai"
# Get-UayChildItem17 -firstname "Ua"

# Get-UayChildItem18 -productid "P1234"
# Get-UayChildItem18 -productid "P12"

# Get-UayChildItem19 -age 25
# Get-UayChildItem19 -age 125

# Get-UayChildItem20 -age 30 -fruit "Apple"
# Get-UayChildItem20 -age 25 -fruit "Mango"

# Get-UayChildItem21 -require1 "" -require2 ""
# Get-UayChildItem21 -require1 "" 
# Get-UayChildItem21 -require2 "" 
# Get-UayChildItem21 -require1 "Kiki"
# Get-UayChildItem21 -require2 "Kiki"

# $data = "Yoda", "Uaychai", "Kiki"
# Get-UayChildItem22 -param $data
# $data = "Yoda", "Uaychai"
# Get-UayChildItem22 -param $data
# $data = @()
# Get-UayChildItem22 -param $data

# Get-UayChildItem23 -EventDate "2030-12-25 13:57:22"
# Get-UayChildItem23 -EventDate "2020-12-25 13:57:22"

# Get-UayChildItem24 -param Option1

# Test-ArgumentCompleter -Type Vegetables -Value Onion

#--------------------------------------------------------------

# Set-Location -Path $PSScriptRoot
# # New-Item -ItemType Directory -Path "UayDirectory" 
# . .\uayscript3.ps1
# Remove-UayDirectoryOnlyV1 -Path "UayDirectory" -Recurse:$false 

#--------------------------------------------------------------



 