fpath+=${ZDOTDIR:-~}/.zsh_functions
### PATH VARIABLES ###
ANTIGEN_PATH="$HOME/.config/antigen.zsh"  # Pulgin manager
CARGO_PATH="$HOME/.cargo/bin"             # Path to binaries managed by cargo
PYTHON_PATH="$HOME/.local/bin"            # Path to files managed by Python
HISTFILE="$HOME/.zsh_history"             # ZSH history file
EDITOR="nvim"                             # Default editor
HISTSIZE=10000                            # The maximum number of events stored in the internal history list
SAVEHIST=10000                            # The maximum number of history events to save in the history file
setopt appendhistory                      # Save history to file

TYPEWRITTEN_PROMPT_LAYOUT="pure"

export PATH=$CARGO_PATH:$PYTHON_PATH:$PATH
. "$HOME/.cargo/env"

# Check and install antigen
if [ ! -f $ANTIGEN_PATH ]; then
    echo "Antigen is not found!" >&2
	curl -L git.io/antigen > $ANTIGEN_PATH
fi

### PLUGIN MANAGER ###
source $ANTIGEN_PATH                               # Enable plugin manager

antigen bundle autojump
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle zsh-users/zsh-autosuggestions       # Autosuggestion
antigen bundle reobin/typewritten@main             # ZSH theme

antigen apply
