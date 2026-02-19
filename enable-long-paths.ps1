# Enable Windows Long Path Support
# Run this script as Administrator

# Check current status
$current = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -ErrorAction SilentlyContinue

if ($current.LongPathsEnabled -eq 1) {
    Write-Host "Long path support is already enabled!" -ForegroundColor Green
} else {
    Write-Host "Enabling long path support..." -ForegroundColor Yellow
    
    # Enable long paths
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1
    
    Write-Host "Long path support has been enabled!" -ForegroundColor Green
    Write-Host "You may need to restart your computer for the changes to take effect." -ForegroundColor Yellow
}

