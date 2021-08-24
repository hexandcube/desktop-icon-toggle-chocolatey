$ErrorActionPreference = 'Stop'; 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/hexandcube/desktop-icon-toggle/releases/download/v.1.2.0/DesktopIconToggle-1.2.0_setup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Desktop Icon Toggle' 

  checksum      = '90C661F3A1BDA269BCD1C633EC572EB6895BB6F27744C2D8BCA97766A8C01672'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs 