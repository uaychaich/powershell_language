#$PSVersionTable

#$PSScriptRoot
#Get-Location

#Set-Location -Path C:\
#Set-Location -Path $PSScriptRoot
#Set-Location -Path .\files

#Get-ChildItem -Path .\

#Set-Content -Path .\example1.txt -Value "This is an example file."
#Set-Content -Path .\example2.txt -Value (Get-ChildItem -Path C:\)
#Add-Content -Path .\example1.txt -Value "This is an additional line."

#Get-Content -Path .\example1.txt
#Get-Content -Path .\example2.txt

#Out-File -FilePath .\example3.txt -InputObject "This is another example file."
#Out-File -FilePath .\example3.txt -Append -InputObject "This is an appended line."
#Out-File -FilePath .\example4.txt -Append -InputObject (Get-ChildItem -Path C:\)
#(Get-ChildItem -Path C:\) >> .\example5.txt

#Get-Content -Path .\example3.txt
#Get-Content -Path .\example4.txt
#Get-Content -Path .\example5.txt

#New-Item -ItemType Directory -Path .\logs 
#New-Item -ItemType File -Path .\logs\log1.txt
#New-Item -ItemType File -Path .\logs\log2.txt

#Remove-Item -Path .\logs\log2.txt
#Remove-Item -Path .\logs -Recurse


