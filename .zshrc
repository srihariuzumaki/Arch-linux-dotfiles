# =========================
#   ZSH + STARSHIP CLEAN
# =========================

# ----- ENV -----
export EDITOR=code
export TERMINAL=foot
export PATH=$PATH:~/.spicetify
# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"



# ----- STARSHIP -----
eval "$(starship init zsh)"

# ----- COMPLETION -----
autoload -Uz compinit
compinit

# ----- PLUGINS -----
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----- HISTORY -----
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_ignore_space

# ----- KEYBINDS -----
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^R' history-incremental-search-backward

# ----- ALIASES -----
alias c='clear'
alias l='eza -lh --icons=auto'
alias ls='eza -1 --icons=auto'
alias ll='eza -lha --icons=auto --group-directories-first'
alias lt='eza --icons=auto --tree'
alias cat='bat'
alias top='btop'
#alias ff='fastfetch'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mkdir='mkdir -p'

# ----- GIT -----
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'

# ----- OPTIONAL BANNER -----
fastfetch 2>/dev/null

#source ~/.zshrc
# Random fastfetch launcher
ff() {
  ~/.local/bin/fastfetch
}

