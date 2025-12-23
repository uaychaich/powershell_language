#"abc"
#'abc'
#56.78

#"abc","xyz"

#@{firstaname="Uaychai";lastname="Chot"}

$data1 = "abc"
$data2 = 56.78
$data3 = "abc","xyz"
#$data3 = @("abc","xyz")
$data4 = @{firstname="Uaychai";lastname="Chot";age=30}
$data5 = @{firstname="Uaychai";lastname="Chot";age=30},@{firstname="John";lastname="Doe";age=45},@{firstname="Jane";lastname="Smith";age=28}
$data6 = [PSCustomObject]$data4 

# $data1.GetType()
# $data2.GetType()
# $data3.GetType()
# $data4.GetType()
# $data5.GetType()
# $data6.GetType()

#$data1
#$data2
#$data3
#$data3[0]
#$data3[0].GetType()
#$data3.Count
#$data4.firstname
#$data5[1].firstname
#$data5[1].GetType()

#"My name is 
#Uay"
#"My name is `nUay"
#"My name is `tUay"

#"$data1 - $data2 - $data3[0] - $data4.firstname - $data5[1].firstname"
#"$data1 - $data2 - $($data3[0]) - $($data4.firstname) - $($data5[1].firstname)"
#'$data1 - $data2 - $($data3[0]) - $($data4.firstname) - $($data5[1].firstname)'
#"Today is Get-Date"
#"Today is $(Get-Date)"

#$data4 | Format-Table
#$data6 | Format-Table

#$data7 = [PSCustomObject]@{firstname="Uaychai";lastname="Chot";age=30},
#         [PSCustomObject]@{firstname="John";lastname="Doe";age=45},
#         [PSCustomObject]@{firstname="Jane";lastname="Smith";age=28}

#$data5 | Format-Table
#$data7 | Format-Table

# Get-Variable -Name data*

# Clear-Variable -Name data*
# Get-Variable -Name data*

# Remove-Variable -Name data*
# Get-Variable -Name data*






