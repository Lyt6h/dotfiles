# dotfiles - Respaldo de CachyOS

Respaldo de la configuración de Linux en este equipo.

## Contenido

- `config/` - Copia de `~/.config` (sin cachés ni perfiles pesados)
- `home/` - Dotfiles del directorio personal (`.bashrc`, `.zshrc`, etc.)
- `packages/` - Listas de paquetes para reinstalar:
  - `explicit.txt` - Paquetes instalados explícitamente (`pacman -Qe`)
  - `all.txt` - Todos los paquetes (`pacman -Q`)
  - `aur.txt` - Paquetes de AUR (`pacman -Qm`)

## Restaurar paquetes

```bash
pacman -S --needed $(cat packages/explicit.txt)
```

## Actualizar el respaldo

```bash
bash backup.sh
```
