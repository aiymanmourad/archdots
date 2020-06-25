#abbr -a e $EDITOR
abbr -a exc chmod +x #make exc
abbr -a s sudo #su
abbr -a a clear #clr
#abbr -a lss ls -la #ls la
#abbr -a ld ls -ld .* #ls directiories
#abbr -a cp cp -i #cp interactive
#abbr -a mv mv -i #mv interactive
abbr -a c cat #cat
abbr -a dots /usr/bin/git --git-dir /home/aiyman/.cfg/ --work-tree /home/aiyman #dotfiles
abbr -a pnv printenv
abbr -a src source

#config file abbr 
#abbr -a nvis $EDITOR $CONFIG/nvim/init.vim 
abbr -a polb $EDITOR $CONFIG/polybar/config
abbr -a i3s $EDITOR $CONFIG/i3/config 
abbr -a als $EDITOR $HOME/.alacritty.yml
abbr -a rcs $EDITOR $CONFIG/ranger/rc.conf
abbr -a fnts $EDITOR $CONFIG/fontconfig/fonts.conf
abbr -a dunsts $EDITOR $CONFIG/dunst/dunstrc
abbr -a comps $EDITOR $HOME/picom.conf

#systemd abbr
abbr -a sysunits systemctl list-units
abbr -a sysisactive systemctl is-active
abbr -a sysstatus systemctl status
abbr -a sysshow systemctl show
abbr -a sysisen systemctl is-enabled
abbr -a sysjobssystemctl list-jobs
abbr -a sysstart  sudo systemctl start
abbr -a sysstop  sudo systemctl stop
abbr -a sysreload  sudo systemctl reload
abbr -a sysiso  sudo systemctl isolate
abbr -a sysenable  sudo systemctl enable
abbr -a sysdisable  sudo systemctl disable
abbr -a syslink  sudo systemctl link

#pacman & yay abbr
abbr -a pi  sudo pacman -S
abbr -a pil  sudo pacman -U
abbr -a pqi pacman -Qi
abbr -a pmir  sudo pacman -Syy
abbr -a prm  sudo pacman -R
abbr -a prep pacman -Si
abbr -a ps pacman -Ss
abbr -a update  sudo pacman -Sy
abbr -a upgrade  sudo pacman -Syu
abbr -a psr pacman -F
abbr -a pls pacman -Ql
abbr -a pown pacman -Qo 
abbr -a yconf yay -Pg
abbr -a y yay -S
