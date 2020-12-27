# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/katesowles/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="kate-af-v2"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.oh-my-zsh--custom/custom/

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  alias-tips
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

################################################################################
## User configuration ##########################################################
################################################################################

# VSCODE SETUP
export PATH="$PATH:/usr/local/bin/code"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# YARN SETUP
export PATH="$PATH:/usr/local/bin/yarn"
export PATH="$PATH:`yarn global bin`"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshrc="code ~/.zshrc"
alias hosts="code /etc/hosts"
alias kateaf="code ~/.oh-my-zsh/themes/kate-af-v2.zsh-theme"
alias settings="code ~/Library/Application\ Support/Code/User/settings.json"
alias restartzsh="exec zsh"
alias shutdownzsh="exit zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. (leave for last)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
