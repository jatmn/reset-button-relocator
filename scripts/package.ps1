param(
  [string]$OutputDirectory = (Join-Path $PSScriptRoot '..\dist')
)

$ErrorActionPreference = 'Stop'

$repositoryRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$modName = 'reset-button-relocator'
$version = '0.0.1'
$stagingDirectory = Join-Path $OutputDirectory "$modName`_$version"
$archivePath = Join-Path $OutputDirectory "$modName`_$version.zip"
$include = @('info.json', 'data-final-fixes.lua', 'changelog.txt', 'thumbnail.png', 'README.md', 'LICENSE')

New-Item -ItemType Directory -Force -Path $OutputDirectory | Out-Null
if (Test-Path -LiteralPath $stagingDirectory) {
  Remove-Item -LiteralPath $stagingDirectory -Recurse -Force
}
New-Item -ItemType Directory -Path $stagingDirectory | Out-Null

foreach ($file in $include) {
  Copy-Item -LiteralPath (Join-Path $repositoryRoot $file) -Destination $stagingDirectory
}

if (Test-Path -LiteralPath $archivePath) {
  Remove-Item -LiteralPath $archivePath -Force
}
Compress-Archive -Path $stagingDirectory -DestinationPath $archivePath
Remove-Item -LiteralPath $stagingDirectory -Recurse -Force

Write-Output "Created $archivePath"
