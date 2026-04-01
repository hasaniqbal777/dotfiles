#  _   _ ___ 
# | | | |_ _|  Hasan Iqbal
# | |_| || |   https://github.com/hasaniqbal777
# |  _  || | 
# |_| |_|___|
#
# My zsh config. Not much to see here; just some pretty standard stuff.

# -----------------------------------------------------
# Powerlevel10k Environment
# -----------------------------------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -----------------------------------------------------
# Oh My Zsh Environment
# -----------------------------------------------------
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load 
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins to load
plugins=(git aws docker zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load Powerlevel10k config
[[ ! -f "${XDG_CONFIG_HOME:-$HOME/.config}/p10k/p10k.zsh" ]] || source "${XDG_CONFIG_HOME:-$HOME/.config}/p10k/p10k.zsh"

# ---------------------------------------------------- 
# .local Environment
# ---------------------------------------------------- 
export PATH="$HOME/.local/bin:$PATH"

# ----------------------------------------------------
# Aliases
# ----------------------------------------------------
alias cat="bat"
alias cd="z"
alias ls="eza --icons --grid --group-directories-first"
alias ll="eza -la --icons --group-directories-first"

# ----------------------------------------------------
# Zoxide Environment
# ----------------------------------------------------
eval "$(zoxide init zsh)"

# ---------------------------------------------------- 
# Homebrew Environment
# ---------------------------------------------------- 
export HOMEBREW_BUNDLE_FILE="$HOME/.config/homebrew/Brewfile"
eval "$(/opt/homebrew/bin/brew shellenv)"

# ---------------------------------------------------- 
# Python Environment
# ---------------------------------------------------- 
source $HOME/.venv/bin/activate

# ---------------------------------------------------- 
# Golang Environment
# ---------------------------------------------------- 
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# ----------------------------------------------------
# GNUPG Environment
# ----------------------------------------------------
export GPG_TTY=$(tty)

# ----------------------------------------------------
# NVM Environment
# ----------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ----------------------------------------------------
# SDKMAN Environment
# ----------------------------------------------------
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# ----------------------------------------------------
# LangFlow Environment
# ----------------------------------------------------
. "$HOME/.langflow/uv/env"

# ----------------------------------------------------
# LM Studio Environment
# ----------------------------------------------------
# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/hasaniqbal/.lmstudio/bin"
# End of LM Studio CLI section

