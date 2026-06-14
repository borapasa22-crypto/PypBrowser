$ErrorActionPreference = "Stop"

$out = Join-Path $PSScriptRoot "..\PypBrowser-windows-x64.zip"
$parts = Get-ChildItem $PSScriptRoot -Filter "PypBrowser-windows-x64.zip.*" | Sort-Object Name

if (!$parts) {
  throw "No PypBrowser zip parts found."
}

if (Test-Path $out) {
  Remove-Item $out -Force
}

$target = [System.IO.File]::Create($out)
try {
  foreach ($part in $parts) {
    $source = [System.IO.File]::OpenRead($part.FullName)
    try {
      $source.CopyTo($target)
    } finally {
      $source.Dispose()
    }
  }
} finally {
  $target.Dispose()
}

Write-Host "Created $out"
