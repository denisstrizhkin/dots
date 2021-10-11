export EDITOR="vim"
export TERMINAL="st"
export BROWSER="surf"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/bin/simple-dwm-bar"
export VIM_LATEX_FOLDER="$HOME/Documents/latex/vimlatex"
export VIM_LATEX_TEMPLATE_DIR="$VIM_LATEX_FOLDER/templates"
export VIM_LATEX_OUTPUT="/tmp"
export _JAVA_AWT_WM_NONREPARENTING=1

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
alias light="sudo echo 128 | sudo tee /sys/class/backlight/amdgpu_bl0/brightness"
