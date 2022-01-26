$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/hexandcube/desktop-icon-toggle/releases/download/v.1.3.0/DesktopIconToggle-1.3.0_setup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Desktop Icon Toggle' 

  checksum      = 'bd7979a31a1db98a75b0343a22d70b0d8974e9c07b3321e373108fddc3340a88'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs 