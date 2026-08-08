source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# opencode
fish_add_path /home/matias/.opencode/bin

# file explorer
alias exp="yazi"

function 60hz 
    hyprctl eval 'hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "auto", scale = 1 })'
end

function 144hz 
    hyprctl eval 'hl.monitor({ output = "eDP-1", mode = "1920x1080@144", position = "auto", scale = 1 })'
end

function clear
    command clear; fastfetch
end

# Locale: fecha latinoamericana + hora 12h
set -gx LC_TIME es_LA_12h.UTF-8
set -gx LOCPATH $HOME/.local/share/locale
