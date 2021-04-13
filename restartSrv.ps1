#Clear-Host
$SrvName = "PhoneSvc"
#Write-Host *** Restarting $SrvName Service *** 
Start-Sleep -Seconds 2
Restart-Service $SrvName
#Stop-Service $SrvName
#Start-Service $SrvName
#Get-Service $SrvName
#Write-Host " "
#Read-Host "Press any key to exit "
Exit
