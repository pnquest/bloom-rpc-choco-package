
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#These change with each version released
$version    = '1.5.2'
$checksum   = '29410F8608169BFAB91868BFB58B7BC89349D385DE1B6AE4FD7195079C1B625C'

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










    







