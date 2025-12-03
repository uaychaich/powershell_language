#Get-ChildItem | Format-List 
#Get-ChildItem | fl

#Get-ChildItem | Format-Table
#Get-ChildItem | ft

#Get-ChildItem | Get-Member
#Get-Help Get-ChildItem -Full

#Get-ChildItem | Select-Object -Property Name, PSPath, Directory 
#Get-ChildItem | Select-Object Name, PSPath, Directory 
#Get-ChildItem | Select-Object Name, PSPath, Directory | Format-List
#Get-ChildItem | select Name, PSPath, Directory | Format-List

#Get-Module | Select-Object -ExpandProperty ExportedCommands
#Get-Module | Select-Object -Property * 
#Get-Module | Select-Object -ExcludeProperty ExportedCommands
#Get-Module | Select-Object -Property * -ExcludeProperty ExportedCommands

#Get-ChildItem | Where-Object -Property Name -EQ -Value "sample1.txt"
#Get-ChildItem | Where-Object -Property Name -Like -Value "*.txt"
#Get-ChildItem | Where-Object -Property Name -Like -Value "*.TXT" 
#Get-ChildItem | Where-Object -Property Name -CLike -Value "*.TXT" 
#Get-ChildItem | Where-Object -Property Name -Match -Value "sample\d+\.txt" 
#Get-ChildItem | Where-Object Name -EQ "sample1.txt"
#Get-ChildItem | Where-Object -FilterScript {$_.Name -EQ "sample1.txt"}
#Get-ChildItem | Where-Object -FilterScript {$_.Name -match "sample\d+.txt" -or $_.Name -match "example\d+.txt"} 

#Get-ChildItem | Sort-Object -Property Name 
#Get-ChildItem | Sort-Object -Property Name -Descending
#Get-ChildItem | Sort-Object -Property Mode,Name -Descending
#Get-ChildItem | Sort-Object -Property @{Expression="Mode";Descending=$true},@{Expression="Name";Descending=$false}





