# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git*' formats ' %b'

# Prompt
NEWLINE=$'\n'
PROMPT='🐶 %F{111}%~$NEWLINE%f❱ '
RPROMPT='%B${vcs_info_msg_0_}%b '
setopt PROMPT_SUBST

# Completion
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Sources
source ~/.zsh/plugins/aliases
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/command-not-found.plugin.zsh
source ~/.zsh/plugins/zsh-autosuggestions.zsh
source ~/.zsh/plugins/key-bindings.zsh
source ~/.zsh/plugins/zsh-peco-history.zsh

# History settings
export HISTFILE=~/.zsh_history
export HISTFILESIZE=10000000
export HISTSIZE=100000
SAVEHIST=10000000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt inc_append_history share_history
export HISTTIMEFORMAT="[%F %T] "

