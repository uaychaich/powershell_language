# Set-Location $PSScriptRoot

#---------------------------------------------

# Get-ChildItem | Get-Member

#---------------------------------------------

# $a = Get-Item -Path .\sourcefile.csv 
# $a.GetType()
# Write-Host "`$a.FullName = $($a.FullName)"
# Write-Host "`$a.CreationTime = $($a.CreationTime)"
# Write-Host "`$a.CreationTime = $($a.CreationTime)"
# Write-Host "`$a.CreationTime.Day = $($a.CreationTime.Day)"
# $a.CopyTo("$PSScriptRoot\copyfile.txt",$true)

#---------------------------------------------

# $customerdata = @{Id=[int]1;FirstName=[string]"Sila";LastName=[string]"Pimpa";Birthday=[datetime]"2000-11-23";Salary=[double]7500}
# Write-Host "Fullname= $($customerdata.FirstName) $($customerdata.LastName)"
# Write-Host "Age=$((Get-Date).Year - $customerdata.Birthday.Year)"

# #---------------------------------------------

# . $PSScriptRoot\CustomerClass.ps1
# $customerdata = [Customer1]@{Id=1;FirstName="Sila";LastName="Pimpa";Birthday="2000-11-23";Salary=7500;}
# $customerdata.GetType()
# $customerdata

#---------------------------------------------

# . $PSScriptRoot\CustomerClass.ps1
# $customerdata = [Customer2]@{Id=1;FirstName="Sila";LastName="Pimpa";Birthday="2000-11-23";Salary=7500;}
# $customerdata

#--------------------------------------------

# . $PSScriptRoot\CustomerClass.ps1
# $customerdata = [Customer3]@{Id=1;FirstName="Sila";LastName="Pimpa";Birthday="2000-11-23";Salary=7500;}
# $customerdata.setBirthday([datetime]"3010-05-15")
# Write-Host "$($customerdata.Id) $($customerdata.FirstName) $($customerdata.LastName) $($customerdata.getBirthday()) $($customerdata.Salary)"

#--------------------------------------------

# . $PSScriptRoot\CustomerClass.ps1
# $customerdata = [Customer4]@{Id=1;FirstName="Sila";LastName="Pimpa";Birthday="2000-11-23";Salary=7500;}
# $customerdata

#--------------------------------------------

# . $PSScriptRoot\CustomerClass.ps1
# $customerdata1 = [Customer5]::new()
# $customerdata2 = [Customer5]::new(500,"Woradeth","Jingjai")
# $customerdata3 = [Customer5]::new(520,"Cloud","Spikehair","2010-04-25",2500)
# $customerdata1
# $customerdata2
# $customerdata3

#--------------------------------------------

# . $PSScriptRoot\CustomerClass.ps1
# $baseinst=[BaseClass]::new()
# $inheritinst=[InheritClass]::new()
# Write-Host "$($baseinst.prop1)"
# Write-Host "$($baseinst.method1())"
# Write-Host "------------------------"
# Write-Host "$($inheritinst.prop1)"
# Write-Host "$($inheritinst.prop2)"
# Write-Host "$($inheritinst.method1())"

#--------------------------------------------

# . $PSScriptRoot\CustomerClass.ps1
# $result1 = [CalculateArea]::Rectangle(50,10)
# $result2 = [CalculateArea]::Triangle(50,10)
# $result1
# $result2