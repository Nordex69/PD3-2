
$logFile = Join-Path $env:USERPROFILE "Desktop\Services.log"
$services = @("Spooler", "wuauserv")
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$logEntries = @()
$logEntries += "===== Service Status Check: $timestamp ====="
foreach ($serviceName in $services) {
    try {
        $service = Get-Service -Name $serviceName -ErrorAction Stop
        $logEntries += "$serviceName : $($service.Status)"
    }
    catch {
        $logEntries += "$serviceName : Not Found or Error - $($_.Exception.Message)"
    }
}
$logEntries | Out-File -FilePath $logFile -Encoding UTF8 -Append
Write-Host "Service statuses recorded in $logFile" -ForegroundColor Green
