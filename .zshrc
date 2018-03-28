# Path to oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export ZSH_THEME=terminalparty

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=10

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git git-extras pip screen sudo)

source $ZSH/oh-my-zsh.sh

# Alias
alias vac=". venv/bin/activate"
alias herbstconf="vim ~/config/herbstluftwm/autostart"
alias runpy="python3 manage.py runserver"
