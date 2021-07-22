$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/hexandcube/desktop-icon-toggle/releases/download/v.1.1.0/DesktopIconToggle-1.1.0_Setup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Desktop Icon Toggle' 

  checksum      = '6499FA62BE814CC60DE621C4B10ED937E5F89F16EA2104B43360BF1C3D0EA9DE'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs 