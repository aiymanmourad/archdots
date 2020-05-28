#=======================================================
#		  Enviorment Variables
#=======================================================

export FZF_BASE=/usr/share/fzf
export PATH=$HOME/bin:w/usr/local/bin:$PATH #path
export LANG=en_US.UTF-8 #lang
export SSH_KEY_PATH="~/.ssh/rsa_id" #ssh key
#export EDITOR=nvim

#=======================================================
#		  Aliases
#=======================================================


#general aliases
alias xrdbl="xrdb ~/.Xresources" #xres
alias exc="chmod +x" #make exc
alias zshx="source ~/.zshrc" #src zrc
alias s="sudo" #su
alias nvi="nvim" #neovim
alias a="clear" #clr
alias lss="ls -la" #ls la
alias ld="ls -ld .*"
alias cp="cp -i"
alias mv="mv -i"
alias f="**"

#systemd aliases
alias scunits="systemctl list-units"
alias scactive="systemctl is-active"
alias scstat="systemctl status"
alias scshow="systemctl show"
alias scisen="systemctl is-enabled"
alias scjobs="systemctl list-jobs"
alias scstart="s systemctl start"
alias scstop="s systemctl stop"
alias scrld="s systemctl reload"
alias sciso="s systemctl isolate"
alias scen="s systemctl enable"
alias scdis="s systemctl disable"
alias sclnk="s systemctl link"

#pacman & yay aliases
alias pi="s pacman -S"
alias pil="s pacman -U"
alias pqi="pacman -Qi"
alias pmir="s pacman -Syy"
alias prm="s pacman -R"
alias prep="pacman -Si"
alias ps="pacman -Ss"
alias update="s pacman -Sy"
alias upgrade="s pacman -Syu"
alias psr="pacman -F"
alias pls="pacman -Ql"
alias pown="pacman -Qo"

alias yconf="yay -Pg"
alias y="yay -S"

#=======================================================
#		  Antigen
#=======================================================

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

source ~/antigen.zsh


antigen use oh-my-zsh

antigen bundle pip

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle qoomon/zsh-lazyload

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply


alias config='/usr/bin/git --git-dir=/home/aiyman/.cfg/ --work-tree=/home/aiyman'
