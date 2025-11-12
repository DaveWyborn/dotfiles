if command -v python3 >/dev/null 2>&1; then
  export SSL_CERT_FILE=$(python3 -m certifi)
fi


export EDITOR=nano

# >>> conda initialize >>>
# <<< conda initialize <<<

eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load API keys and secrets from encrypted store
[ -f ~/.secrets.env ] && source ~/.secrets.env
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

alias d='dictate.sh'
alias dc='dictate-clip.sh'
alias cd='z'
alias ls='eza --long --header --icons'
alias eza='eza --long --header --icons -G'
alias ezad='eza --long --header --icons -G -D'
alias ezadh='eza --long --header --icons -G -D -H'

# opencode
export PATH=/Users/davewyborn/.opencode/bin:$PATH


# FZF
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"



source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
