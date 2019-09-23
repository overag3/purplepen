$ErrorActionPreference = 'Stop'
$url = 'http://purple-pen.org/downloads/purplepen-323.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'Purple Pen*'
    checksum       = '5EFB88501DFE89B9258FBBB6C836A880A0E2E2621AA2975EC471A94BA93E0BB1'
    checksumType   = 'sha256'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
