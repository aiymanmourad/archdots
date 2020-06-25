#!/bin/zsh
source $ZDOTDIR/symbols.zsh

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )


setopt PROMPT_SUBST
#PROMPT='百合 %n@%M ${PWD/#$HOME/~} ${vcs_info_msg_0_}${ZSH_POINTER} '
PROMPT='%n@%m:%15<..<%~%<<%# '
