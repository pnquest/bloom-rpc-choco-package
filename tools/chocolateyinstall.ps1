
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#These change with each version released
$version    = '1.5.3'
$checksum   = '7B206B84DA1ED9D43A97182F2602793690A5441207A8E89A9FAE0ECF94B0E9F7'

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










    







