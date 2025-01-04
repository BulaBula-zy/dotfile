# append $HOME/.local/bin to $PATH
# export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/.local/bin:$PATH

# add llvm(clang/clang++/clangd) to $PATH
export PATH=/opt/homebrew/opt/llvm/bin:$PATH

# add postgres to $PATH
export PATH=/Applications/Postgres.app/Contents/Versions/16/bin:$PATH

# append $GOPATH/bin to $PATH
if command -v go &> /dev/null; then
  export PATH=$(go env GOPATH)/bin:$PATH
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# openjdk
# add openjdk bin path to $PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# add openjdk include path to $CPPFLAGS
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# powerlevel10k
if [[ $ZSH_THEME == "powerlevel10k/powerlevel10k" ]]; then
  # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # Initialization code that may require console input (password prompts, [y/n]
  # confirmations, etc.) must go above this block; everything else may go below.
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
  # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

# starship
eval "$(starship init zsh)"

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
plugins=(
  git
  colored-man-pages
  history
  fzf-tab
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# go
export GOBIN=$(go env GOPATH)/bin

# obsidian
export OBSIDIAN=/Users/bulabula/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/

# private tmp files
export TMP=/Users/bulabula/Documents/_tmp

# icloud
export ICLOUD_NUS=/Users/bulabula/Library/Mobile\ Documents/com~apple~CloudDocs/Master/NUS

# add Cmake to $PATH
export PATH=/Applications/CMake.app/Contents/bin:$PATH

# nvim
if command -v nvim &> /dev/null; then
  # configuration management
  # see https://docs.astronvim.com/reference/alt_install/#isolated-installation or use `:h NVIM_APPNAME` for details
  export NVIM_APPNAME=astronvim_v4
  alias vim="nvim"
  alias v="nvim"
fi

# vpn
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890 # ClashX
# export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 # V2rayU

# homebrew
# export HOMEBREW_BREW_GIT_REMOTE=""
# export HOMEBREW_CORE_GIT_REMOTE=""
# export HOMEBREW_BOTTLE_DOMAIN=""
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# lsd
if command -v lsd &> /dev/null; then
  alias ls="lsd"
  alias ll="lsd -l"
  alias l="lsd -la"
fi

# dust
if command -v dust &> /dev/null; then
  alias du="dust -r"
fi

# tldr
if command -v tldr &> /dev/null; then
  alias tl="tldr -t base16"
fi

# bat
if command -v bat &> /dev/null; then
  alias cat="bat --theme=Dracula --plain" 
fi

# duf
if command -v duf &> /dev/null; then
  alias df="duf" 
fi

# ripgrep
if command -v rg &> /dev/null; then
  alias grep="rg" 
fi

# fd
if command -v fd &> /dev/null; then
  alias find="fd" 
fi

# git-delta
if command -v delta &> /dev/null; then
  alias diff="delta --line-numbers --side-by-side" 
fi

# leaks
alias lk="leaks --atExit --"

# ranger
alias ranger="pipx run --spec ranger-fm ranger" 

# clear
alias c="clear"

# exit
alias ee="exit"

# yazi
export EDITOR=nvim # used by yazi (see $HOME/.config/yazi/keymap.toml for details)
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# zoxide
# export _ZO_ECHO=1 
eval "$(zoxide init zsh --cmd z)"

# python
# export CURRENT_PYTHON_VERSION=3.12
# if command -v python${CURRENT_PYTHON_VERSION} &> /dev/null; then
#   alias python="python${CURRENT_PYTHON_VERSION}" 
# fi
alias p="python3"

# make
alias mk="make -j`nproc`"
