# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git*' formats '(%b) '

# Prompt 
PROMPT='🐶 %F{226}%~%f %B${vcs_info_msg_0_}%b❱ '
setopt PROMPT_SUBST

# Sources
source ~/.config/zsh/aliases
source ~/.config/zsh/functions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/functions/command-not-found.plugin.zsh
source ~/.config/zsh/functions/zsh-autosuggestions.zsh

# Exports
export EDITOR='nvim'
export BROWSER='firefox'
export PAGER='most'

# Paths
export PATH=./.local/bin:$PATH

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

# Git
GIT_AUTHOR_NAME="Budhaditya Saha"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="budha.rocks@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sam/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sam/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sam/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sam/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

