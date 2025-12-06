$data = [PSCustomObject]@{firstname="John"; lastname="Doe"; age=33; nationality="Thailand","USA"},
        [PSCustomObject]@{firstname="Jane"; lastname="Smith"; age=25; nationality="Thailand"},
        [PSCustomObject]@{firstname="Jim"; lastname="Brown"; age=40; nationality="Thailand"},
        [PSCustomObject]@{firstname="Jake"; lastname="White"; age=28; nationality="Thailand","Japan"},
        [PSCustomObject]@{firstname="Jill"; lastname="Black"; age=35; nationality="Thailand","India"},
        [PSCustomObject]@{firstname="Joe"; lastname="Green"; age=22; nationality="Thailand"},
        [PSCustomObject]@{firstname="Jenny"; lastname="Blue"; age=27; nationality="Thailand"},
        [PSCustomObject]@{firstname="Jack"; lastname="Yellow"; age=33; nationality="Thailand"}
#$data

#$data | Format-List
#$data | fl 

#$data | Format-Table
#$data | Format-Table -GroupBy age
#$data | Format-Table -HideTableHeaders
#$data | ft

#$data | Get-Member

#$data | Select-Object -Property *
#$data | Select-Object -Property firstname, lastname
#$data | Select-Object firstname, lastname
#$data | Select-Object firstname, lastname, @{Name='FullName';Expression={"$($_.firstname) $($_.lastname)"}}
#$data | Select-Object firstname, lastname, @{n='FullName';e={"$($_.firstname) $($_.lastname)"}}

#$data | Select-Object * -ExcludeProperty nationality
#$data | Select-Object -ExcludeProperty nationality
#$data | Select-Object -ExpandProperty nationality
#$data | Select-Object * -ExpandProperty nationality

#$data | Where-Object -Property age -GT -Value 30
#$data | Where-Object age -GT 30
#$data | Where-Object firstname -EQ "Jane"
#$data | Where-Object firstname -EQ "jane"
#$data | Where-Object firstname -CEQ "Jane"
#$data | Where-Object firstname -CEQ "jane"
#$data | Where-Object firstname -Like "ja*"
#$data | Where-Object firstname -Like "*a*"
#$data | Where-Object firstname -Like "j???"
#$data | Where-Object firstname -Match "^J.*e$"
#$data | Where-Object -FilterScript {$_.age -GT 25 -and $_.age -LT 35}

#$data | Sort-Object -Property age
#$data | Sort-Object -Property age -Descending
#$data | Sort-Object -Property age, firstname -Descending
#$data | Sort-Object -Property @{Expression="age";Descending=$true},@{e="firstname";d=$false}

#$data | Group-Object -Property age 
#$data | Group-Object -Property @{Expression={"$($_.age) naja" }}

#$data | Measure-Object -Property age -Sum -Average -Maximum -Minimum

#$data | ForEach-Object -Process {"$($_.firstname) $($_.lastname) - $($_.age) years old"}

#$data | Group-Object -Property age | ForEach-Object -Process {"$($_.Name)";$data | Where-Object age -EQ $($_.Name) | Format-Table -HideTableHeaders;}
