PypBrowser Linux download notes

This folder contains the corrected Linux desktop entry and Flatpak manifest template.

No Linux runtime binary was present on this Windows machine, so I did not create a fake Linux download.
To produce the real Linux archives, build PypBrowser on Linux and publish:

- pyp.linux-x86_64.tar.xz
- pyp.linux-aarch64.tar.xz
- flatpak-metadata.tar

The Flatpak template now uses:

- app id: app.pyp_browser.pyp
- profile/config path: .pyp and /app/etc/pyp
- GitHub release URLs: https://github.com/borapasa22-crypto/PypBrowser/releases
- PypBrowser launcher naming instead of zen
