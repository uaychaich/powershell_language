# $data=3,1,2,5;
# switch ($data) {
#     1 {Write-Host "Data is one"}
#     2 {Write-Host "Data is two"}
#     3 {Write-Host "Data is three"}
#     Default {Write-Host "Data is something else"}
# }

#----------------------------------------------------

# $data="Uaychai";
# switch ($data) {
#     "uaychai" {Write-Host "case insensitive match"}
#     "Uaychai" {Write-Host "case sensitive match"}
#     Default {Write-Host "no match" }
# }

#----------------------------------------------------

# $data="Uaychai";
# switch -CaseSensitive ($data) {
#     "uaychai" {Write-Host "case insensitive match"}
#     "Uaychai" {Write-Host "case sensitive match"}
#     Default {Write-Host "no match" }
# }

#----------------------------------------------------

# $data="Uaychai";
# switch -Wildcard ($data) {
#     "uay*" {Write-Host "case insensitive match and * wildcard"}
#     "Uay????" {Write-Host "case sensitive match and ? wildcard"}
#     Default {Write-Host "no match" }
# }

#----------------------------------------------------

# $data="abc@xyz.com";
# switch -Regex ($data) {
#     "^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" {Write-Host "This is a valid email address"}
#     "^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" {Write-Host "This is a valid phone number"}
#     Default {Write-Host "no match" }
# }

#----------------------------------------------------

# $data=3,1,2,5;
# switch ($data) {
#     1 {Write-Host "Data is one";continue;}
#     2 {Write-Host "Data is two"; break;}
#     3 {Write-Host "Data is three"}
#     Default {Write-Host "Data is something else"}
# }

#----------------------------------------------------

# $data=3,1,2,5;
# switch ($data) {
#     {$_ -lt 3} {Write-Host "Data is less than 3"}
#     {$_ -ge 3} {write-Host "Data is greater than or equal to 3"}
#     Default {Write-Host "Data is something else"}
# }

#----------------------------------------------------
