$currentscriptfolder =  $PSScriptRoot;
Set-Location -Path "$currentscriptfolder/files";

#----------------------------------------------------------

# foreach ($file in Get-ChildItem -Path . -Filter *.txt) {
#     $content = Get-Content -Path $file.FullName;
#     if (($null -eq $content) -or ($content -eq "")) {
#         Write-Host "The file '$($file.Name)' is empty.";
#     }
#     else{
#         Write-Host "The file '$($file.Name)' is not empty. and the content is: $content";
#     }
# }

#----------------------------------------------------------

# switch (Get-ChildItem -Path . -Filter *.txt) {
#     {(((Get-Content -Path $_) -eq "") -or ($null -eq (Get-Content -Path $_)))} {Write-Host "The file '$($_.Name)' is empty."}
#     Default {Write-Host "The file '$($_.Name)' is not empty. and the content is: $(Get-Content -Path $_)";}
# }