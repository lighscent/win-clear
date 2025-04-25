$targetPath = "C:\Windows\System32"
$sourcePath = Join-Path $PSScriptRoot "clear.bat"

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "You must run this script as an administrator."
    Exit 1
}

Copy-Item -Path $sourcePath -Destination $targetPath -Force
Write-Host "Clear command installed to $targetPath. You can now use it from any command prompt." -ForegroundColor Green