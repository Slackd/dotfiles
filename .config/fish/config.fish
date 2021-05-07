# Color
set -gx TERM xterm-256color

# Defaults
set -gx EDITOR nvim

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
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias c='clear'
alias x='exit'
alias cdK='cd /home/sam/Kernel'
alias reload='source ~/.zshrc'
alias eV='nvim ~/.config/nvim/init.lua'
alias eB='nvim ~/.bashrc'
alias eX='nvim ~/.Xresources'
alias eZ='nvim ~/.zshrc'
alias e='nvim'
alias vim='nvim'
alias cdP='cd ~/Projects'


alias neofetch="neofetch --ascii_distro fedora_small"


