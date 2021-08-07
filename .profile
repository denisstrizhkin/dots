export EDITOR="vim"
export TERMINAL="st"
export BROWSER="icecat"

export PATH="$PATH:/home/fox/.local/bin"

alias s_v="sudo vim"
alias s_r="sudo reboot"
alias s_p="sudo poweroff"
alias g_dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias m_arch="sudo mount -U c381b11b-f539-4250-ae06-08e9f5776fcb /mnt/arch"
alias w_cp='function _f(){ echo "$1"; wal -i "$1"; cp "$1" bg_img.jpg; }; _f'
