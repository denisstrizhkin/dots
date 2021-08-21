export EDITOR="vim"
export TERMINAL="st"
export BROWSER="surf"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/bin/DWM_Scripts"

alias s_xi="sudo xbps-install"
alias s_xr="sudo xbps-remove"
alias s_xq="sudo xbps-query"
alias s_v="sudo vim"
alias s_r="sudo reboot"
alias s_p="sudo poweroff"
alias g_dot="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias m_arch="sudo mount -U c381b11b-f539-4250-ae06-08e9f5776fcb $HOME/mnt/arch"
alias w_cp='function _f(){ echo "$1"; wal -i "$1"; cp "$1" bg_img.jpg; }; _f'
alias m_phone="simple-mtpfs --device 1 $HOME/mnt/phone"
