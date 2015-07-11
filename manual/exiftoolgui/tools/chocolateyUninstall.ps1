. (Join-Path (Split-Path -parent $MyInvocation.MyCommand.Definition) 'helpers\helpers.ps1')

$packageTitle   = "ExifTool GUI"
$packageName    = "exiftoolgui"
$binRoot        = GetBinRoot
$startMenu      = GetMenuStartPath

Remove-Item "$binRoot\$packageName" -Force -Recurse
Remove-Item "$startMenu\Programs\$packageTitle" -Force -Recurse