# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions vi-mode fzf)

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

source "$ZSH/oh-my-zsh.sh"

# PATH
export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias ghf="git history fixup"
alias dbtf="$HOME/.local/bin/dbt"
alias vim="nvim"
alias dotfiles="nvim ~/.dotfiles"

# dbt Environment
export DATA_SOURCE_ENV=prod
export ROLE_GRANT_ENV=prod
export MASK_SOURCE_ENV=prod

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
