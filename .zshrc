# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#	Zoxide
	eval "$(zoxide init zsh)"

#	Alias
alias ll='/usr/bin/lsd -lh --group-dirs=first'
alias la='/usr/bin/lsd -a --group-dirs=first'
alias l='/usr/bin/lsd --group-dirs=first'
alias lla='/usr/bin/lsd -lha --group-dirs=first'
alias ls="ls -A -l --color=always"
alias cat='/usr/bin/bat'
alias catn='/usr/bin/cat'
alias catnl='/usr/bin/bat --paging=never'
alias arch="sudo pacman -Syu"
alias nv="nvim"
alias sd='cd /home/Avilx/h4ck/HTB/StartPoint'
alias md='cd /home/Avilx/h4ck/HTB/Machine'
alias adios="sudo poweroff"
alias rockyou='/usr/share/seclists/Passwords/Leaked-Databases/rockyou.txt'
alias flamesdown="sudo pacman -U /var/cache/pacman/pkg/flameshot-13.3.0-2-x86_64.pkg.tar.zst"
alias disimpo="systemctl --user import-environment DISPLAY XAUTHORITY"


# CONFIGURACIÓN DE COLORES (Justo después de cargar Oh My Zsh)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[executable]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=#ffffff'
ZSH_HIGHLIGHT_STYLES[function]='fg=#ff0000,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#ffffff'

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Función para crear estructura de directorios de hacking (estilo S4vitar)
function mkt(){
    mkdir {nmap,content,exploits,Writeup}
    echo "[+] Estructura de carpetas creada para el objetivo."
}

# Función para definir el objetivo (Target)
function sett(){
    echo "$1" > ~/target
    echo "[+] Target set to: $1"
}

function scanning(){
    # Lee la IP de tu archivo target
    local target_ip=$(cat ~/target 2>/dev/null)
    
    if [ -z "$target_ip" ]; then
        echo "[!] Error: No hay IP en ~/target. Usa 'sett [IP]' primero."
    else
        echo "[+] Escaneando $target_ip ..."
        sudo nmap -p- -sS --open --min-rate 5000 -vvv -n -Pn "$target_ip" -oG allPorts
    fi
}

# Función para extraer puertos de un archivo .nmap
function extractPorts(){
    ports="$(cat $1 | grep -oP '\d+(?=/tcp)' | awk '{print $1}' | tr '\n' ',' | sed 's/,$//')"
    ip_address="$(cat $1 | grep -oP '\d{1,3}(\.\d{1,3}){3}' | sort -u | head -n 1)"
    echo -e "\n[*] Extracting information...\n" >&2
    echo -e "\t[*] IP Address: $ip_address" >&2
    echo -e "\t[*] Open ports: $ports\n" >&2
    echo $ports | tr -d '\n' | xclip -sel clip
    echo -e "[*] Ports copied to clipboard\n" >&2
}


# Created by `pipx` on 2026-02-18 18:53:59
export PATH="$PATH:/home/Avilx/.local/bin"
export _JAVA_AWT_WM_NONREPARENTING=1
