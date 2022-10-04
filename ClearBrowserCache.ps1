# This script deletes the cache folder for all 3 main browsers. 

# === Firefox === 
Write-Host "Clearing Firefox Cache..."

try{
    Remove-Item "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles\*.default-release\cache*"
}
catch {
    Write-Host "File path does not exist, or permission error."
}

# === Chrome ===
Write-Host "Clearing Chrome Cache..." 

Get-Process -Name "*Chrome*" | Stop-Process
try {
    Remove-Item "$env:LOCALAPPDATA\Google\Chrome\User Data\Profile*\Cache"
}
catch {
    Write-Host "File path does not exist, or permission error."    
}

# === Edge ===
Write-Host "Clearing Edge Cache..."

Get-Process -Name "*Edge*" | Stop-Process
try {
    Remove-Item "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache" -Force
}
catch {
    Write-Host "File path does not exist, or permission error." 
}
