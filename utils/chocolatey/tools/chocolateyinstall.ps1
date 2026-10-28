$packageName = 'stremio-desktop-v5'
$toolsDir    = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
}



if ([Environment]::Is64BitOperatingSystem) {
    $packageArgs['url']          = 'https://github.com/notfullmetal/stremio-community-v5-1/releases/download/5.0.0-beta.98/Stremio.5.0.98-x64.exe'
    $packageArgs['checksum']     = '166f9989ff03a329b508aaf03e1ab8c60a6d4d0672fd7a883507c8e69ea43de1'
    $packageArgs['checksumType'] = 'sha256'
} else {
    $packageArgs['url']          = 'https://github.com/notfullmetal/stremio-community-v5-1/releases/download/5.0.0-beta.98/Stremio.5.0.98-x86.exe'
    $packageArgs['checksum']     = '2354e991c4e183c98c7bb15a78a37269b25b711d66e558ccd08338b77b7961e0'
    $packageArgs['checksumType'] = 'sha256'
}

Install-ChocolateyPackage @packageArgs
