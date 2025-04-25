# Check administrator rights
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "You must run this script as an administrator."
    Exit 1
}

# Create a dedicated folder for the command
$toolsPath = "C:\Windows\CustomTools"
if (-NOT (Test-Path $toolsPath)) {
    New-Item -ItemType Directory -Path $toolsPath
}

# Create clear.bat in the tools folder
$clearContent = "@echo off`r`ncls`r`nexit /b 0"
Set-Content -Path "$toolsPath\clear.bat" -Value $clearContent -Encoding ASCII -Force

# Add the tools path to system PATH if not already present
$currentPath = [Environment]::GetEnvironmentVariable("Path", "Machine")
if (-NOT ($currentPath -like "*$toolsPath*")) {
    [Environment]::SetEnvironmentVariable("Path", "$currentPath;$toolsPath", "Machine")
}

# Verify installation
if (Test-Path "$toolsPath\clear.bat") {
    Write-Host "Clear command successfully installed to $toolsPath" -ForegroundColor Green
    Write-Host "PATH environment variable updated" -ForegroundColor Green
    Write-Host "Please restart your computer for changes to take effect" -ForegroundColor Yellow
} else {
    Write-Error "Installation failed!"
    Exit 1
}