#=======================================================
#		  Enviorment Variables
#=======================================================

export FZF_BASE=/usr/share/fzf
#add various directiories to path 
path=(
$HOME/bin
$HOME/.gem/ruby/2.7.0/bin
$HOME/perl5/bin
$HOME/.cargo/bin
/usr/sbin 
)
export PATH 
export LANG=en_US.UTF-8 #lang
export SSH_KEY_PATH="~/.ssh/rsa_id" #ssh key
export EDITOR=nvim
export PLUG=$HOME/.zsh/plug
export TERM=alacritty
export CONFIG=~/.config
export PERL5LIB="/home/aiyman/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/home/aiyman/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}";
export PERL_MB_OPT="--install_base \"/home/aiyman/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/home/aiyman/perl5"

alias e="$EDITOR"


#=======================================================
#		  Aliases
#=======================================================
#general aliases
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
#alias f="**" work on fzf
alias penv="printenv"
alias src="source"

#config file alias
alias zshs="e ~/.zshrc"
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

HISTFILE=~/.zsh_history


source ~/.antigen.zsh


antigen bundle Aloxaf/fzf-tab
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting 


antigen apply


ZSH_AUTOSUGGEST_STRATEGY="history"
