# Close any running instances of chrome
Get-Process -Name chrome | ForEach-Object { $_.CloseMainWindow() | Out-Null }
# Clear chrome cookies
$profileFolder = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default"
$profilePath = Get-ChildItem $profileFolder | Select-Object -ExpandProperty FullName 

$cookieFile = Join-Path $profilePath\ "Network\Cookies"

if (Test-Path $cookieFile) {
    Remove-Item $cookieFile -Force -ErrorAction continue;
    Write-Host "chrome cookies cleared."
} 
else {
    Write-Host "No chrome cookies found."
} 

# Clear chrome cache

$cacheFolder = Join-Path "$profilePath" "Cache"

if (Test-Path $cacheFolder) {
    Remove-Item $cacheFolder -Force -Recurse -ErrorAction stop; 
    Write-Host "chrome cache cleared."
} 
else {
        Write-Host "No chrome cache found."
}
    # Launch chrome
Start-Process chrome
