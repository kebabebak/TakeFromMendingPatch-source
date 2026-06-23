$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot

$required = @(
    'libs\0Harmony.dll',
    'libs\Assembly-CSharp.dll',
    'libs\UnityEngine.CoreModule.dll',
    'libs\HaulToBuilding.dll',
    'libs\Mending.dll'
)

foreach ($path in $required) {
    if (-not (Test-Path (Join-Path $root $path))) {
        Write-Host "Missing: $path" -ForegroundColor Red
        Write-Host "See libs\README.txt for which files to copy." -ForegroundColor Yellow
        exit 1
    }
}

Write-Host 'Building TakeFromMendingPatch (Release)...' -ForegroundColor Cyan
dotnet build (Join-Path $root 'TakeFromMendingPatch.csproj') -c Release

if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host ''
Write-Host "Output: $(Join-Path $root 'out\TakeFromMendingPatch.dll')" -ForegroundColor Green
