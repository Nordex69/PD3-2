$downloadsPath = "$env:USERPROFILE\Downloads"
$zipPath = "$env:USERPROFILE\Documents\PDF_Backup.zip"

$pdfFaili = Get-Childitem $downloadsPath -Filter *.pdf | Where-Object {
}

Compress-Archive -Path C:\Users\A250026BB\Documents  -DestinationPath $zipPath -Force