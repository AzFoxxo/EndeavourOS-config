function gaytext
    echo $argv | lolcat
end

function fsck-fix
   sudo fsck -a $argv
end

# Notes
alias notes="cd /dt/notes; code ."

# Note push function
function note-push
	cd /dt/notes
	git add .
	git commit -m "Push to git repo"
	git push
end

# Note pull function
function note-pull
	cd /dt/notes
	git pull
end


pfetch | lolcat

alias fishrc "nvim ~/.config/fish/config.fish; source ~/.config/fish/config.fish"
alias alacrittyrc "nvim ~/.config/alacritty/alacritty.toml"

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
alias code 'code-insiders .'

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

#Fish
alias up 'yay -Syyu --noconfirm; yes | yay -Scc'
alias upp 'yay -Syyu --noconfirm; yes | yay -Scc; poweroff'
alias upr 'yay -Syyu --noconfirm; yes | yay -Scc; reboot'

alias krestart 'pkill plasmashell; plasmashell --replace &; disown; exit;'

alias rm~ 'rm *~*'

# Useful aliases
alias dn "dotnet run"
alias dnt dotnet
alias dt "cd /dt/"
alias win "cd /win/"

export EDITOR=nvim

gaytext "Welcome back $USER!"
