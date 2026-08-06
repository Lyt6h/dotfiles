#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "=== Copiando configuracion ==="
rm -rf config/*
cp -r ~/.config/* config/
rm -rf config/heroic config/discord config/BraveSoftware config/mozilla config/opencode config/unity3d

echo "=== Copiando dotfiles del home ==="
cp -r ~/.config/user-dirs.dirs ~/.config/user-dirs.locale home/
cp ~/.bashrc ~/.bash_profile ~/.zshrc home/ 2>/dev/null || true

echo "=== Generando listas de paquetes ==="
pacman -Qe > packages/explicit.txt
pacman -Q > packages/all.txt
pacman -Qm > packages/aur.txt

echo "=== Commit y push ==="
git add -A
git commit -m "Respaldo $(date +%F)"
git push origin main
echo "=== Respaldo actualizado ==="
