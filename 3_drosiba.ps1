$status = Get-MpComputerStatus
$score = 100

if ($status.RealTimeProtectionEnabled -eq $false) { $score -= 50 }
if ($status.AntivirusSignatureAge -gt 3) { $score -= 20 }
if ($status.QuickScanAge -gt 7) { $score -= 20 }

if ($score -lt 0) { $score = 0 }

Write-Host "Sistēmas drošības reitings: $score / 100"