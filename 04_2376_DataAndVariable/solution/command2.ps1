# $data = 25;
# $data -eq 25;        # True
# $data -ne 30;        # True 
# $data -gt 20;        # True
# $data -lt 30;        # True
# $data -ge 25;        # True
# $data -le 30;        # True
# $data -in 20,25,30;   # True
# $data -notin 10,15,20; # True
# 20,25,30 -contains $data;  # True
# 10,15,20 -notcontains $data; # True

# $data = "abc@xyz.com";
# $data -eq "abc@xyz.com";   # True
# $data -ne "def@xyz.com";   # True
# $data -like "*@xyz.com";   # True
# $data -notlike "*@abc.com"; # True
# $data -match "^[a-z]+@[a-z]+\.com$";  # True
# $data -notmatch "^[0-9]+@[0-9]+\.com$";  # True
# $data -in "abc@xyz.com","def@xyz.com";  # True
# $data -notin "def@xyz.com","ghi@xyz.com";  # True
# "abc@xyz.com","def@xyz.com" -contains $data;  # True
# "def@xyz.com","ghi@xyz.com" -notcontains $data;  # True


# $data1 = $true; $data2 = $false;
# $data1 -and $data2;   # False
# $data1 -or $data2;    # True
# -not $data1;          # False
# $data1 -xor $data2;   # True
# $data1 -eq $data2;    # False
# $data1 -ne $data2;    # True


# $data = 20
# $data -is [int]
# $data -isnot [string]


# 5+10
# 10+5
# 10*3
# 20/3
# 20%3

# "Hello " + "World"
# -join "Hello ","World"
# -join ("Hello ","World")
# -join @("Hello ","World")
# $data = "Hello ","World"
# -join $data


# "Hello World" -replace "World","PowerShell"


# "Hello World" -split " "