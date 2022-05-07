# nvim
alias nvim='neovide $argv --neovim-bin /usr/bin/nvim'

# root privileges
alias pls='sudo'
alias oops='sudo !!'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# vim and emacs
alias vim='nvim'
alias em='/usr/bin/emacs -nw'
alias emacs='emacsclient -c -a "emacs"'

# Changing "ls" to "exa"
alias ls='exa -l --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -al --color=always --group-directories-first --icons'  # all files and
alias lt='exa -aTl --color=always --group-directories-first --icons' # tree listing
alias l.="exa -al --icons | egrep '^\.'"

# pacman and yay
alias pac-update='sudo pacman -Syu'              # update only standard pkgs
alias pac-get='sudo pacman -S'                   # install a package
alias pac-rup='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias pac-killall='sudo pacman -Rs'              # remove package with extras
alias pac-kill='sudo pacman -R'                  # remove package
alias yay-get='yay -S'                           # install an AUR
alias yay-aup='yay -Sua'                         # update only AUR pkgs (yay)
alias yay-update='yay -Syu'                      # update standard pkgs and AUR pkgs (yay)
alias yay-killall='yay -Rs'                      # remove package with extras
alias yay-kill='yay -R'                          # remove package
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages

# get fastest mirrors
alias mirror='sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist'
alias mirrord='sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist'
alias mirrors='sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist'
alias mirrora='sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias lynx='lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'
alias ncmpcpp='ncmpcpp ncmpcpp_directory=$HOME/.config/ncmpcpp/'
alias mocp='mocp -M '$XDG_CONFIG_HOME'/moc -O MOCDir='$XDG_CONFIG_HOME'/moc'
alias rmrf='rm -rf $argv'
# ps
alias psa='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# Merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# get error messages from journalctl
alias jctl='journalctl -p 3 -xb'

# gpg encryption
# verify signature for isos
alias gpg-check='gpg2 --keyserver-options auto-key-retrieve --verify'
# receive the key of a developer
alias gpg-retrieve='gpg2 --keyserver-options auto-key-retrieve --receive-keys'

# Play audio files in current dir by type
alias playwav='deadbeef *.wav'
alias playogg='deadbeef *.ogg'
alias playmp3='deadbeef *.mp3'

# Play video files in current dir by type
alias playavi='vlc *.avi'
alias playmov='vlc *.mov'
alias playmp4='vlc *.mp4'

# youtube-dl
alias yta-aac='youtube-dl --extract-audio --audio-format aac '
alias yta-best='youtube-dl --extract-audio --audio-format best '
alias yta-flac='youtube-dl --extract-audio --audio-format flac '
alias yta-m4a='youtube-dl --extract-audio --audio-format m4a '
alias yta-mp3='youtube-dl --extract-audio --audio-format mp3 '
alias yta-opus='youtube-dl --extract-audio --audio-format opus '
alias yta-vorbis='youtube-dl --extract-audio --audio-format vorbis '
alias yta-wav='youtube-dl --extract-audio --audio-format wav '
alias ytv-best='youtube-dl -f bestvideo+bestaudio '

# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# bare git repo alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

# termbin
alias tb='nc termbin.com 9999'

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Unlock LBRY tips
alias tips='lbrynet txo spend --type=support --is_not_my_input --blocking'

#Clear
alias c='clear'

#Ping
alias ping='ping google.com'

#Photos
alias pic='cd ~/Pictures'

#Downloads
alias dl='cd ~/Downloads'

#Documents
alias doc='cd ~/Documents'

#.Conf
alias conf='cd ~/.config'

#Largest Files
alias largefile='du -h -x -s -- * | sort -r -h | head -20'

#System Information
alias neo='neofetch'

## Configuration

#neovim
alias nviminit="nvim ~/.config/nvim/init.vim"

#fish
alias fishconf="nvim ~/.config/fish/config.fish"

#neofetch
alias neoconf="nvim ~/.config/neofetch/config.conf"

#Refresh
alias refresh="source ~/.config/fish/conf.d/aliases.fish && clear && source ~/.config/fish/config.fish && source ~/.config/fish/conf.d/autostart.fish"

#Unsource
alias unsource="exec $SHELL -l"

#conf
alias aliasconf="nvim ~/.config/fish/conf.d/aliases.fish"
alias startconf="nvim ~/.config/fish/conf.d/autostart.fish"

#cat to bat
alias cat="bat"
