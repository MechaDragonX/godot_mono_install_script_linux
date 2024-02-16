#!/bin/bash

# Download, extract, and move Godot files to /opt
wget https://github.com/godotengine/godot/releases/download/4.2.1-stable/Godot_v4.2.1-stable_mono_linux_x86_64.zip
unzip Godot_v4.2.1-stable_mono_linux_x86_64.zip
sudo mkdir /opt/godot-4.2.1-mono/
sudo mv Godot_v4.2.1-stable_mono_linux_x86_64/* /opt/godot-4.2.1-mono/

# Download and resize icon to preferred size of 26px
wget -O godot.svg https://upload.wikimedia.org/wikipedia/commons/6/6a/Godot_icon.svg
mogrify -resize 256 -background none -format png godot.svg
sudo mv godot.png /opt/godot-4.2.1-mono/godot.png

# Create desktop file for lauching from application launcher
echo "[Desktop Entry]" >> godot-mono.desktop
echo "Encoding=UTF-8" >> godot-mono.desktop
echo "Version=1.0" >> godot-mono.desktop
echo "Name=Godot Mono" >> godot-mono.desktop
echo "GenericName=Game Engine" >> godot-mono.desktop
echo "Comment=Cross-platform game engine to create 2D and 3D games in .NET" >> godot-mono.desktop
echo "Exec=/opt/godot-4.2.1-mono/Godot_v4.2.1-stable_mono_linux.x86_64" >> godot-mono.desktop
echo "Icon=/opt/godot-4.2.1-mono/godot.png" >> godot-mono.desktop
echo "Terminal=false" >> godot-mono.desktop
echo "Type=Application" >> godot-mono.desktop
echo "Categories=Development; Games;" >> godot-mono.desktop
