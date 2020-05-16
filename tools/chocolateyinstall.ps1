
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#These change with each version released
$version    = '1.4.1'
$checksum   = '465106850AE7C38921AF99E4E5D0CDBC8B6B3C4EFE3B6A7B88F2E1F9578D99B3'

$url        = "https://github.com/uw-labs/bloomrpc/releases/download/$version/bloomrpc-setup-$version.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'bloom-rpc*'

  checksum      = $checksum
  checksumType  = 'sha256'

  silentArgs    = "/S `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    







