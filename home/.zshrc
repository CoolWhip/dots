# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/david/.oh-my-zsh"

# Path to Android platform tools
export PATH="/usr/local/bin/platform-tools:$PATH"

ZSH_THEME="alanpeabody"

# Set list of themes to pick from when loading at random
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(cargo colored-man-pages colorize extract fancy-ctrl-z git rust tmux zsh-autosuggestions zsh-interactive-cd zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
source /home/david/.config/broot/launcher/bash/br

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_AU.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# zoxide
eval "$(zoxide init zsh)"

# FFF colours
export FFF_COL2=9
export FFF_COL5=6
export FFF_W3M_XOFFSET=0
export FFF_W3M_YOFFSET=0

# Run 'FFF' with 'f' or whatever you decide to name the function.
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

# FFF opener
export FFF_OPENER="/home/dave/.fff_open.sh"

# use FZF & FD
export FZF_DEFAULT_COMMAND='fdfind --type file --follow --hidden --color=always'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --ansi'

# Command Not Found insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
alias please="sudo"
alias suvimrc="sudo nvim /etc/xdg/nvim/init.vim"
alias userChrome="nvim ~/.mozilla/firefox/al4zpld7.default-release/chrome/userChrome.css"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias fullupgrade="sudo apt full-upgrade"
alias install="sudo apt install"
alias remove="sudo apt remove"
alias search="apt search"
alias lsd='exa -l && echo "(`ls | wc -l`)"'
alias lsa='exa -al && echo "(`ls -a | wc -l`)"'
alias bat="batcat -p"
alias c="clear"
alias clean="sudo apt clean"
alias purge="sudo apt purge"
alias autoclean="sudo apt autoclean"
alias autoremove="sudo apt autoremove"
alias reload="source ~/.zshrc && clear && figlet -f smslant zsh reloaded | lolcat && motd"
alias ufetch="/usr/bin/ufetch-popos"
alias ufetchconf="nvim /usr/bin/ufetch-popos"
alias email="neomutt"
alias chat="weechat"
alias listen="mpv --no-video"
alias reddit="tuir -s"
alias newsboat="newsboat -r"
alias weather="curl wttr.in/Melbourne"
alias weather2="curl v2.wttr.in/Melbourne"
alias moon="curl wttr.in/Moon"
alias reddsave="env -i reddsaver -e ~/Downlads/Programs/reddsaver/reddsaver.env -d ~/Pictures/reddit/"
alias fd="fdfind -HI"
alias v="nvim"
alias sv="sudo nvim"
alias delete="sudo rm -rf"
alias emptytrash="rm -rf ~/.local/share/fff/trash/*"
alias rustupdate="rustup update"
alias reboot="sudo reboot"
alias goodbye="sudo shutdown -h now"
alias xterm="xterm -ti vt340"
alias w3mimg="w3m -o auto_image=TRUE"
alias fap=$'(grim -g "$(slurp)")'
alias walls="sxiv -t -p -b -r -g 1200x675 ~/Pictures/walls &"
alias dumps="sxiv -t -p -b -r -g 1200x675 ~/Pictures/dumps &"
alias emptytrash="rm -rf ~/.local/share/fff/trash/*"
# kb-manager
alias kbl="kb list"
alias kbe="kb edit"
alias kba="kb add"
alias kbv="kb view"
alias kbd="kb delete --id"
alias kbg="kb grep"
alias kbt="kb list --tags"

ufetch
