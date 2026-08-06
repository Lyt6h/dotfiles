#!/bin/sh
file="$1"
w="$2"
h="$3"
x="$4"
y="$5"

case "$(file -Lb --mime-type "$file")" in
    image/*)
        kitty +kitten icat --clear --transfer-mode=memory \
            --place "${w}x${h}@${x}x${y}" "$file" >/dev/tty < /dev/tty
        ;;
esac
