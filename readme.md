# Godot Mono/.NET Install Script for linux

Adapted from [SingingBush/godot-fedora.md](https://gist.github.com/SingingBush/a16ef4bc8b94f57d3aa0e74d9c358d24).

## Prerequisites
Mono (Required for Godot)
- [Debian-based instructions](https://www.mono-project.com/download/stable/#download-lin)
- Arch: `mono`
- Fedora: `mono-devel`
ImageMagick (Required for the script. Could already be installed since it is a popular dependancy)
- Debian-based: `imagemagick`
- Arch: `imagemagick `
- Fedora: `ImageMagick`
### Recommended (Unsure if it is necesarry)
.NET (Latest version is 8.0 as of latest commit)
- Debian-based: `dotnet-sdk-<version>`
- Arch AUR: `dotnet-sdk-<version>`
- Fedora: `dotnet-sdk-<version>`

## This script only works for v4.2.1 and acts as a first time install as it downloads and icon and creates a launcher.
I hope to make this work as an update script as well.
