try {
    $a = 5;
    $b = 0;
    $c = $a / $b;
    Write-Host "The result is $c"
}
catch {
    Write-Host "Something went wrong";
    Write-Host "$Error `n"
    Write-Host "$($_.Exception.Message)"
}
finally{
    $Error.Clear();
    Write-Host "Execution of the script is complete."
}

#----------------------------------------------------------

# try {
#     Set-Location -Path "C:\Projects\MyApp" -ErrorAction Stop
# }
# catch {
#     Write-Host "The specified path does not exist."
# }
# finally{
#     Write-Host "Execution of the script is complete."
# }
