$logTarget = 'C:\Windows\Temp'
$logAge = '-30'

Get-ChildItem "*.log" –Path "$logTarget" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays($logAge))} | Remove-Item 


