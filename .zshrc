#--------------------------------------------------------------------------------
#	▒███████▒  ██████  ██░ ██     ▄████▄   ▒█████   ███▄    █   █████▒██▓  ▄████ 
#	▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒   ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██   ▒▓██▒ ██▒ ▀█▒
#	░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░   ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒████ ░▒██▒▒██░▄▄▄░
#	  ▄▀▒   ░  ▒   ██▒░▓█ ░██    ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░▓█▒  ░░██░░▓█  ██▓
#	▒███████▒▒██████▒▒░▓█▒░██▓   ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░▒█░   ░██░░▒▓███▀▒
#	░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒   ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ▒ ░   ░▓   ░▒   ▒ 
#	░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░     ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ░      ▒ ░  ░   ░ 
#	░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░   ░        ░ ░ ░ ▒     ░   ░ ░  ░ ░    ▒ ░░ ░   ░ 
#	  ░ ░          ░   ░  ░  ░   ░ ░          ░ ░           ░         ░        ░ 
#	░                            ░                                               
#-----------------------------By: @linuxmobile-----------------------------------


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# If you come from bash you might have to change your $PATH.
# export PATH=${HOME}/bin:/usr/local/bin:$PATH
export PATH="${HOME}/.local/bin:${HOME}/.cargo/bin:${PATH}"

# Path to use local/bin
export PATH="${PATH}:${HOME}/.local/bin"

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

 ZSH_THEME="skill"

# Set list of themes to pick from when loading at random.
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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(zsh-autosuggestions zsh-completions zsh-syntax-highlighting bgnotify)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
setopt INC_APPEND_HISTORY
source "${ZSH}/oh-my-zsh.sh"

# This speeds up pasting when using zsh-autosuggestions.
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
paste_init() {
  OLD_SELF_INSERT="${${(s.:.)widgets[self-insert]}[2,3]}"
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}
paste_done() {
  zle -N self-insert "$OLD_SELF_INSERT"
}
zstyle :bracketed-paste-magic paste-init paste_init
zstyle :bracketed-paste-magic paste-finish paste_done

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment.
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions.
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


###############################
# ****** ALIAS SECTION ****** #
###############################

# For full list of aliases: Run 'alias'

PRIV="$(command -v doas || command -v sudo)"

alias c="clear"
alias q="exit"
alias hd="hexdump -C"
alias ping_google="ping 8.8.8.8"
alias ping_cloudfl="ping 1.1.1.1"
alias trim_all="${PRIV} fstrim -va"
alias nanosu="${PRIV} nano"
alias nvimsu="${PRIV} nvim"
alias cleanram="${PRIV} sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"

# YT music
alias yt="~/.scripts/yt-r"
# Telegram Cli
alias tg="arigram"

# Regenerate grub
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Search and install packages
alias pacin="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"

# Search and install packages grom aur
alias paruin="paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro  paru -S"
# Search and remove packages
alias pacrem="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
# Search btw installed packages
alias pac="pacman -Q | fzf"

# Check aur comments
alias parucom="paru -Gc"

# Check aur updates
alias parupd="paru -Qua"

# Check pkgbuild
alias parucheck="paru -Gp"

# Clean Orphan packages
alias cleanpac='sudo pacman -Rns $(pacman -Qtdq); paru -c'

# Check Apps eating cpu 
alias cpu="ps axch -o cmd:15,%cpu --sort=-%cpu | head"

# Check Apps eating mem
alias mem="ps axch -o cmd:15,%mem --sort=-%mem | head"

# ps_mem
alias psmem="${PRIV} ps_mem | grep -E 'Program|dwm|dunst|picom|zsh|---'"

# Set wallpaper and Colors
alias wp="~/.scripts/wp"
alias monitor="~/.scripts/monset.sh"

# Fachafetch
alias rx="~/.scripts/rxfetch"

# Fancy scripts
alias block="~/.scripts/zsh/cl"
alias color="~/.scripts/zsh/block ~/.scripts/zsh/blockify_conf"
alias rain="~/.scripts/zsh/rain"
alias topcmd="~/.scripts/zsh/tp"

# Exa Settings
alias ls="exa -lgh --icons --group-directories-first"
alias la="exa -lgha --icons --group-directories-first"

# Color-Toys Aliases
alias bloks="${HOME}/.color-toys/bloks"

# GPG Dialog
export GPG_TTY="$(tty)"

# Bat Theme
export BAT_THEME="base16"

# Reset colorscheme
wal -r


export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

export YTFZF_EXTMENU='rofi -dmenu -fuzzy -width 1500'
export YTFZF_ENABLE_FZF_DEFUALT_OPTS=0
