#!/bin/bash
set -e

echo "→ Comenzando desinflado de KDE Plasma..."

echo "→ Marcando para no desistalar suite de accesibilidad de KDE Plasma..."
sudo apt-mark hold kdeaccessibility

echo "→ Desinstalando aplicaciones..."
sudo apt remove --purge konqueror konq-plugins akregator kmail kaddressbook gimp xterm kwrite debian-reference-common dragonplayer juk goldendict-ng anthy anthy-common mozc-data uim-mozc mozc-server xiterm+thai fcitx-config-common fcitx-frontend-all fcitx5 fcitx-modules fcitx-module-quickphrase-editor fcitx5-data fcitx5-config ibus-data

echo "→ Instalando herramientas varias..."
sudo apt install plasma-discover-backend-flatpak kde-config-plymouth kde-config-flatpak

echo "→ Limpiando paquetes innecesarios..."
sudo apt autoremove -y

echo "Post-instalación completada correctamente, se recomienda reiniciar."
