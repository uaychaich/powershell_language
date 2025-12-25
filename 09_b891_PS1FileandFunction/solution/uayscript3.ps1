function Remove-UayChildItem {
    <#
    .SYNOPSIS
        This function removes child items from a specified path.
        ฟังก์ชันนี้ใช้เพื่อลบไอเท็มย่อยจากเส้นทางที่ระบุ

    .DESCRIPTION
        This function removes files and/or directories from the specified path.
        ฟังก์ชันนี้ใช้เพื่อลบไฟล์และ/หรือไดเรกทอรีจากเส้นทางที่ระบุ

    .PARAMETER Path
        Path specifies the location from which to remove child items.
        Path ระบุที่ตั้งที่ต้องการลบไอเท็มย่อย

    .PARAMETER File
        File specifies to remove files only.
        File ระบุเพื่อลบเฉพาะไฟล์

    .PARAMETER Directory
        Directory specifies to remove directories only.
        Directory ระบุเพื่อลบเฉพาะไดเรกทอรี

    .PARAMETER Recurse
        Recurse specifies to remove items recursively.
        Recurse ระบุเพื่อลบไอเท็มอย่างซ้ำซ้อน

    .EXAMPLE
         Remove-UayChildItem -Path ".\Temp" -File

    .EXAMPLE
         Remove-UayChildItem -Path ".\Temp" -Directory -Recurse

    .EXAMPLE
        Remove-UayChildItem -Path ".\Temp" -File -Directory -Recurse

    .INPUTS
        String

    .OUTPUTS
        String

    .NOTES
        Author:  Uaychai Chotjaratwanich
        Website: uaymemo.com
    
    .LINK
        https://uaymemo.com
    #>
    [CmdletBinding()]
    param(  
            [Parameter(Mandatory=$true, Position=0,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true,HelpMessage="Specify the path to remove child items from.")]
            [string]$Path,
            [Parameter(Mandatory=$false,Position=1,ValueFromPipeline=$false,ValueFromPipelineByPropertyName=$false,HelpMessage="Specify to remove files only.")]
            [switch]$File,
            [Parameter(Mandatory=$false,Position=2,ValueFromPipeline=$false,ValueFromPipelineByPropertyName=$false,HelpMessage="Specify to remove directories only.")]
            [switch]$Directory,
            [Parameter(Mandatory=$false,Position=3,ValueFromPipeline=$false,ValueFromPipelineByPropertyName=$false,HelpMessage="Specify to remove items recursively.")]
            [switch]$Recurse
        )
    process{
        try{
            $items = Get-ChildItem -Path $Path
            $filecount=0;$directorycount=0;$workedfilecount=0;$workeddirectorycount=0;
            $items | Where-Object { $_.PSIsContainer -eq $false } | ForEach-Object { $filecount++ }
            Write-Debug "Total Files: $filecount"
            $items | Where-Object { $_.PSIsContainer -eq $true } | ForEach-Object { $directorycount++ }
            Write-Debug "Total Directories: $directorycount"
            foreach ($item in $items){
                if ($File.IsPresent -and $item.PSIsContainer -eq $false){
                    Remove-Item -Path $item.FullName -Verbose:$Verbose.IsPresent
                    $workedfilecount++;Write-Debug "`$workedfilecount: $workedfilecount";
                    Write-Progress -Activity "Removing Files" -Status "Processing file $workedfilecount of $filecount" `
                                    -PercentComplete (($workedfilecount / $filecount) * 100) -Id 1 -Completed:($workedfilecount -eq $filecount);
                    Start-Sleep -Seconds 2
                }
                elseif ($Directory.IsPresent -and $item.PSIsContainer -eq $true){
                    Remove-Item -Path $item.FullName -Recurse:$Recurse.IsPresent -Verbose:$Verbose.IsPresent
                    $workeddirectorycount++;Write-Debug "`$workeddirectorycount: $workeddirectorycount";
                    Write-Progress -Activity "Removing Directories" -Status "Processing directory $workeddirectorycount of $directorycount" `
                                    -PercentComplete (($workeddirectorycount / $directorycount) * 100) -Id 2 -Completed:($workeddirectorycount -eq $directorycount);
                    Start-Sleep -Seconds 2
                }
            }
        }
        catch{
            throw 
        }
    }
}