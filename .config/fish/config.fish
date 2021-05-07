# Color
set -gx TERM xterm-256color


# Basic Base functions
function fish_title
    echo $argv[1]
end

function fish_greeting
end

# Defaults
set -gx EDITOR nvim
set -gx BROWSER firefox

# PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.npm/bin $PATH
set -gx PATH ~/.node_modules/.bin $PATH

# Node JS
npm set prefix ~/.npm
export NODE_PATH=/usr/lib/node_modules

# Miniconda
source /home/sam/miniconda3/etc/fish/conf.d/conda.fish

#Prompt
starship init fish | source

# Exa
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias c='clear'
alias x='exit'
alias eV='nvim ~/.config/nvim/init.lua'
alias eB='nvim ~/.bashrc'
alias eZ='nvim ~/.zshrc'
alias eF='nvim ~/.config/fish/config.fish'
alias e='nvim'
alias vim='nvim'

alias g git
alias neofetch="neofetch --ascii_distro fedora_small"

# DNF
abbr -a dnfu sudo dnf upgrade --refresh
abbr -a dnfc sudo dnf clean all
abbr -a dnfi sudo dnf install
abbr -a dnfr sudo dnf remove
abbr -a dnfar sudo dnf autoremove

