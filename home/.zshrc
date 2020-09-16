# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/david/.oh-my-zsh"

# Path to Android platform tools
export PATH="/usr/local/bin/platform-tools:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

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

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# FFF colours
export FFF_COL2=9
export FFF_COL5=6
export FFF_W3M_XOFFSET=0
export FFF_W3M_YOFFSET=0

# Run 'fff' with 'f' or whatever you decide to name the function.
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

# Command Not Found insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="sudo nano ~/.oh-my-zsh"
alias bashconfig="sudo nano ~/.bashrc"
alias alacritty.yml="nvim ~/.config/alacritty/alacritty.yml"
alias nanorc="nano ~/.nanorc"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias suvimrc="sudo nvim /etc/xdg/nvim/init.vim"
alias userChrome="nvim ~/.mozilla/firefox/al4zpld7.default-release/chrome/userChrome.css"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias install="sudo apt install"
alias remove="sudo apt remove"
alias search="apt search"
alias lsd="exa -l"
alias c="clear"
alias clean="sudo apt clean"
alias purge="sudo apt purge"
alias autoclean="sudo apt autoclean"
alias autoremove="sudo apt autoremove"
alias spotify="ncmpcpp"
alias reload="source ~/.zshrc && clear && figlet -f smslant zsh reloaded | lolcat"
alias ufetch="/usr/bin/./ufetch-popos"
alias ufetchconf="nvim /usr/bin/ufetch-popos"
alias yacy="~/Downloads/yacy/./startYACY.sh"
alias email="neomutt"
alias chat="weechat"
alias reddit="tuir -s"
alias newsboat="newsboat -r"
alias weather="curl wttr.in/Melbourne"
alias weather2="curl v2.wttr.in/Melbourne"
alias moon="curl wttr.in/Moon"
alias edit="nvim"
alias delete="sudo rm -rf"
alias rustupdate="rustup update"
alias reboot="sudo reboot"
alias goodbye="sudo shutdown -h now"
alias xterm="xterm -ti vt340"
alias w3mimg="w3m -o auto_image=TRUE"
alias pm='passmenu $dmenu_bottom -fn "Operator Mono Book-15" -nb "black" -sb "#94EBEB" -sf "black"'

ufetch
