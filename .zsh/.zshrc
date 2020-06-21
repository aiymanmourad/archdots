#!/bin/zsh

autoload -Uz compinit 
autoload -Uz promptinit
compinit

# custom prompt
source $ZDOTDIR/prompt.zsh

# menu selection
zstyle ':completion:*' menu select
#{TODO}zstyle ':completion:'
#zstyle ':completion::complete:*' gain-priveleges 1
setopt COMPLETE_ALIASES

#autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
#zle -N up-line-or-beginning-search 
#zle -N down-line-or-beginning-search

#[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
#[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

bindkey -v

HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=10000 
SAVEHIST=10000 


#=======================================================
#		  Aliases
#=======================================================
#general aliases
alias e="$EDITOR"
alias xrdbl="xrdb ~/.Xresources" #xres
alias exc="chmod +x" #make exc
alias s="sudo" #su
alias nvi="nvim" #neovim 
alias a="clear" #clr
alias lss="ls -la" #ls la
alias ld="ls -ld .*" #ls directiories
alias cp="cp -i" #cp interactive
alias mv="mv -i" #mv interactive
alias c="cat" #cat
alias config='/usr/bin/git --git-dir=/home/aiyman/.cfg/ --work-tree=/home/aiyman' #dotfiles
alias penv="printenv"
alias src="source"

#config file alias
alias zshs="e $ZDOTDIR/.zshrc"
alias nvis="e $CONFIG/nvim/init.vim" 
alias polb="e $CONFIG/polybar/config"
alias i3s="e $CONFIG/i3/config" 
alias als="e $HOME/.alacritty.yml"
alias rcs="e $CONFIG/ranger/rc.conf"
alias fnts="e $CONFIG/fontconfig/fonts.conf"
alias dunsts="e $CONFIG/dunst/dunstrc"
alias comps="e $HOME/picom.conf"

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
#		  Plugins
#=======================================================

#source $HOME/antigen.zsh

#antigen bundle softmoth/zsh-vim-mode
#antigen bundle zsh-users/zsh-autosuggestions
#antigen bundle zsh-users/zsh-syntax-highlighting

#antigen apply

#export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
