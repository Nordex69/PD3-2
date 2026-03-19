try {
    winget list --source msstore | ForEach-Object {
        if ($_ -and ($_ -notmatch "Name\s+Id\s+Version\s+Source")) {
            $_
        }
    }
}
catch {
    Write-Error "Failed to retrieve Microsoft Store apps. Ensure winget is installed and available in PATH."
}