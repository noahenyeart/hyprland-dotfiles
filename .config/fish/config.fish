source /usr/share/cachyos-fish-config/cachyos-config.fish

set -gx EDITOR nvim
set -gx BROWSER firefox

function fish_greeting
    fastfetch --config /usr/share/fastfetch/presets/examples/13.jsonc
end

alias ls='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias 'update-grub'='sudo grub-mkconfig -o /boot/grub/grub.cfg'


# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
