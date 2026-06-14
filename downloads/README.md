# PypBrowser Downloads

## Windows x64

The Windows portable build is split into GitHub-safe chunks:

- `windows/PypBrowser-windows-x64.zip.001`
- `windows/PypBrowser-windows-x64.zip.002`

Rebuild the zip on Windows:

```powershell
Get-Content .\windows\PypBrowser-windows-x64.zip.* -Encoding Byte -ReadCount 0 |
  Set-Content .\PypBrowser-windows-x64.zip -Encoding Byte
Expand-Archive .\PypBrowser-windows-x64.zip .\PypBrowser-windows-x64
```

The packed zip is 180 MB and the extracted runtime is about 302 MB, safely below 4 GB.

## Linux / Flatpak

`linux/` contains the corrected Pyp desktop entry and Flatpak manifest template. A real Linux archive was not present on this Windows machine, so Linux binaries still need to be built on Linux and attached as release artifacts.
