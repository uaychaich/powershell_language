# function Remove-UayDirectoryOnlyV1($Path,$Recurse) {
#     try{
#         if ((Get-Item -Path $Path).PSIsContainer -eq $true){
#             Remove-Item -Path $Path -Recurse:$Recurse
#         }else{
#             throw [System.IO.DirectoryNotFoundException] "`"$Path`" is not directory."
#         }
#     }
#     catch{
#         throw [System.ArgumentException] "`"$Path`" is not correct"
#     }
# }

#--------------------------------------------------------------------------------------

