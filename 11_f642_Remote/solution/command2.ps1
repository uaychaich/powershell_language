Set-Location $PSScriptRoot
Get-PSSession | Remove-PSSession
Get-Job | Remove-Job 
Remove-Item -Path .\uaytext.txt
New-Item -Path .\uaytext.txt -ItemType File
$uaywfsession = New-PSWorkflowSession -ComputerName localhost -Name uaywfsession 
Invoke-Command -Session $uaywfsession -AsJob -JobName UayWFJob -ScriptBlock{
    workflow Test-Workflow{
        param([int[]]$items,[string]$path)
        foreach($data in $items)
        {
            if($data -eq 50){Suspend-Workflow}
            else{
                InlineScript{
                    $tt = $using:data
                    $xx = $using:path
                    $tt | Out-File -FilePath "$xx\uaytext.txt" -Append
                    Write-Host "`$data = $tt | `$path = $xx"
                }
                Checkpoint-Workflow
            }
        }
    }
    [int[]] $aa = 1..100
    Test-Workflow -items $aa C:\Project\powershell_language\11_f642_Remote\solution
}