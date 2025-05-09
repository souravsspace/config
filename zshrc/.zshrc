# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded
ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(git macos brew node npm)

# Source oh-my-zsh
if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

# source git
source ~/.config/zshrc/.git.zshrc

# source env vars
source ~/.config/zshrc/env/.env.ai.zshrc

# User configuration
# Homebrew configuration
eval export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
export PATH="/opt/homebrew/bin:$PATH";

# NVM configuration
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Load Starship prompt if installed
if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

# Aliases
alias ls="ls -G"
alias ll="ls -la"
alias la="ls -lAh"
alias l="ls -lh"

# Alias to open Visual Studio Code
alias vscode="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# Alias to open Cursor 
alias cursor="/Applications/Cursor.app/Contents/MacOS/Cursor"


# Export and alias of ssh-config
export SSH_DIR="$HOME/.config/ssh"
alias ssh="ssh -F $SSH_DIR/config"

# History configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zshrc/.zsh_history

# Load Starship prompt from the correct config location
if command -v starship &> /dev/null; then
  export STARSHIP_CONFIG=~/.config/starship/starship.toml
  eval "$(starship init zsh)"
fi

# ZSH Autosuggestions (if installed)
if [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [ -f ~/.config/zshrc/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source ~/.config/zshrc/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# ZSH Syntax Highlighting (if installed)
if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ -f ~/.config/zshrc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.config/zshrc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Enable ZSH completion system
autoload -Uz compinit
compinit

# TMUX configuration
# Set TMUX_TMPDIR to ~/.tmux-log for storing tmux logs
export TMUX_TMPDIR="$HOME/.tmux-log"

# Create the directory if it doesn't exist
if [ ! -d "$TMUX_TMPDIR" ]; then
  mkdir -p "$TMUX_TMPDIR"
fi

# If tmux configuration exists, set the config file location
if [ -d "$HOME/.config/tmux" ]; then
  alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"
fi

# Auto-start tmux
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#   tmux attach -t workflows || tmux new -s default
# fi

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/sourav/.docker/completions $fpath)
autoload -Uz compinit
compinit

# End of Docker CLI completions
eval "$(rbenv init - zsh)"

# Add Ruby to PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/sourav/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.cargo/bin:$PATH"
