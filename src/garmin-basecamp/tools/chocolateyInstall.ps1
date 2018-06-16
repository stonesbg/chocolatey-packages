﻿$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName    = "{{slug}}"
$installerType  = "EXE"
$packageVersion = "{{version}}"
$url            = "{{downloadUrl}}"
$silentArgs     = "/quiet"
$validExitCodes = @(0)
$checksum       = "{{checksum}}"
$checksumType   = "{{checksumType}}"


# Install the package
Install-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -Url $url `
  -SilentArgs $silentArgs `
  -ValidExitCodes $validExitCodes `
  -Checksum $checksum `
  -ChecksumType $checksumType `
