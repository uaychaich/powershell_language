Set-Location $PSScriptRoot

# "abc"
# 'abc'
# 56.78

$data0 = "Uaychai";
[string]$data1  = "Uaychai";
[int]$data2 = 100;
[double]$data3 = 99.99;
[bool]$data4 = $true;
[switch]$data5 = $false;
[datetime]$data6 = "2024-12-31 23:59:59";
[hashtable]$data7 = @{ FirstName="Uaychai"; Age=25 };
$data8 = [PSCustomObject]@{ FirstName="Uaychai"; Age=25 };
[array]$data9 = 1, "Uay", $true, 99.99;
[string[]]$data10 = "Uay", "Kiki", "Mome";
[string[]]$data11 = @("Uay", "Kiki", "Mome");
[int[]]$data12 = @(23, 44, 55);
[hashtable[]]$data13 = @(@{ FirstName="Uaychai"; Age=25 }, @{ FirstName="Kiki"; Age=22 });
$data14 = @([PSCustomObject]@{ FirstName="Uaychai"; Age=25 }, [PSCustomObject]@{ FirstName="Kiki"; Age=22 });

# Write-Host "$data0"
# Write-Host '$data0'

# Write-Host "`$data0=$data0 $($data0.GetType())"
# Write-Host "`$data1=$data1 $($data1.GetType())"
# Write-Host "`$data2=$data2 $($data2.GetType())"
# Write-Host "`$data3=$data3 $($data3.GetType())"
# Write-Host "`$data4=$data4 $($data4.GetType())"
# Write-Host "`$data5=$data5 $($data5.IsPresent) $($data5.GetType())"
# Write-Host "`$data6=$data6 $($data6.GetType())"
# Write-Host "`$data7=$data7 $($data7.GetType())"
# Write-Host "`$data8=$data8 $($data8.GetType())"
# Write-Host "`$data9=$data9 $($data9.GetType())"
# Write-Host "`$data10=$data10 $($data10.GetType())"
# Write-Host "`$data11=$data11 $($data11.GetType())"
# Write-Host "`$data12=$data12 $($data12.GetType())"    
# Write-Host "`$data13=$data13 $($data13.GetType())"
# Write-Host "`$data14=$data14 $($data14.GetType())"

# Write-Host "$($data6.Day)  $($data6.Month)  $($data6.Year)"

# Write-Host "$($data7.FirstName)  $($data7.Age)"
# Write-Host "$($data7['FirstName'])  $($data7['Age'])"
# Write-Host "$($data7.Count)"
# $data7.Keys 
# $data7.Values 
# $data7 | Format-Table

# Write-Host "$($data8.FirstName)  $($data8.Age)"
# Write-Host "$($data8['FirstName'])  $($data8['Age'])"
# Write-Host "$($data8.Count)"
# $data8 | Format-Table

# Write-Host "$($data9.Count)"
# Write-Host "$($data9[0]) $($data9[1]) $($data9[2]) $($data9[3])"

# $data13.Count
# $data13 | Format-Table

# $data14.Count
# $data14 | Format-Table


# Get-Variable -Name data*

# Clear-Variable -Name data*
# Get-Variable -Name data*

# Remove-Variable -Name data*
# Get-Variable -Name data*

# $uaypath = "C:\Project\" 
# $uayext = "*"
# Get-ChildItem -Path $uaypath -Filter "*.$uayext" 

# $uayparam = @{Path="."; Filter="*.ps1"}
# Get-ChildItem @param