function cdl 
    cd $argv && ls -l
end

alias e="$EDITOR"
alias exc="chmod +x"
alias a="clear"
alias c="cat"
alias dots="/usr/bin/git --git-dir $HOME/.cfg --work-tree $HOME"
alias pnv="printenv"
alias src="source"

#config file aliases
alias nvis="e $CONFIG/nvim/init.vim"
alias polys="e $CONFIG/polybar/config"
alias i3s="e $CONFIG/i3/config"
alias rcs="e $CONFIG/ranger/rc.conf"
alias fnts="e $CONFIG/fontconfig/fonts.conf"

#systemd aliases

#git aliases
alias g="git" #
alias ga="g add"
alias gaa "ga -all"
alias gapa "ga --patch"
alias gau "ga --update"
alias gav "ga --verbose"
alias gap "g apply"
alias gb  "g branch"
alias gba "gb -a"
alias gbd "gb -d"
alias gbD "gb -D"
alias gc "g commit -v"
alias gc! "gc --amend"
alias gca "gc -a"
alias gcam "gca -m"
alias gcsm "gc -s -m"
alias gcb "g checkout -b"
alias gcf "g config --list"
alias gcm "g checkout master"
alias gcd "g checkout develop"
alias gco "g checkout"
alias gcs "g commit -S"


