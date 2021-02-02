# Source manjaro-zsh-configuration because i like it 
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt because I like it 
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
# Use custom zsh alias from my gitlab
if [[ -e /home/sam/.zsh-aliases ]]; then
  source /home/sam/.zsh-aliases
fi

