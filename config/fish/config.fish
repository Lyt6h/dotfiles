source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end


function 60hz 
    hyprctl eval 'hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "auto", scale = 1 })'
end

function 144hz 
    hyprctl eval 'hl.monitor({ output = "eDP-1", mode = "1920x1080@144", position = "auto", scale = 1 })'
end

function clear
    command clear; fastfetch
end

# opencode
fish_add_path /home/matias/.opencode/bin
