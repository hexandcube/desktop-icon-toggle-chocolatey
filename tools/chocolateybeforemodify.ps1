$DesktopIconToggle = Get-Process DesktopIconToggle -ErrorAction SilentlyContinue

if ($DesktopIconToggle) {
    $DesktopIconToggle | Stop-Process -Force
}

Remove-Variable DesktopIconToggle