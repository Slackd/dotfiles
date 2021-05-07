# Prompt
eval "$(starship init zsh)"

# Sources
source ~/.config/zsh/aliases
source ~/.config/zsh/functions/command-not-found.plugin.zsh
source ~/.config/zsh/functions/history-substring-search.zsh
source ~/.config/zsh/functions/zsh-autosuggestions.zsh

# Exports
export EDITOR='nvim'
export BROWSER='firefox'

# Paths
# Node Js
npm config set prefix ~/.npm
export PATH=./.node_modules/.bin:$PATH
export PATH=./.npm/bin:$PATH

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

