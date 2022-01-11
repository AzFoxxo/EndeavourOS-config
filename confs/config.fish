function gaytext
    echo $argv | lolcat
end

function fsck-fix
   sudo fsck -a $argv
end

neofetch --ascii_distro anarchy | lolcat

alias fishrc "nvim ~/.config/fish/config.fish; source ~/.config/fish/config.fish"
alias alacrittyrc "nvim ~/.config/alacritty/alacritty.yml"

alias l "exa -ah"
alias la 'exa -ah'
alias ll "exa -lah"

alias d disown
alias q exit
alias c clear
alias b bat
alias cat bat

alias c. 'code-insiders .'
alias code. 'code-insiders .'

alias v nvim
alias vim nvim
alias vi nvim

alias r 'reboot'
alias p 'poweroff'

alias ht htop
alias gt gotop
alias mem 'watch -n 0.1 free -m'
alias u 'uname -a'
alias t tldr

alias rmr 'rm -r'
alias cpr 'cp -r'

alias dol dolphin
alias dol. 'dolphin .'

alias up 'yay -Syyu; yay -Scc'
alias upp 'yay -Syyu; yay -Scc; poweroff'
alias upr 'yay -Syyu; yay -Scc; reboot'

alias krestart 'pkill plasmashell; plasmashell --replace &; disown; exit;'

alias rm~ 'rm *~*'

export EDITOR=nvim

gaytext "Welcome back $USER!"
