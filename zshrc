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
export PATH="$PATH:${HOME}/bin:/usr/local/go/bin:${HOME}/go/bin"

source $HOME/.zsh_specific

export PATH=$CARGO_PATH:$PYTHON_PATH:$PATH
. "$HOME/.cargo/env"

# Check and install antigen
if [ ! -f $ANTIGEN_PATH ]; then
    echo "Antigen is not found!" >&2
	curl -L git.io/antigen > $ANTIGEN_PATH
fi

### PLUGIN MANAGER ###
source $ANTIGEN_PATH                               # Enable plugin manager

#antigen bundle autojump
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle fzf                                 # history helper CTRL-R, CTRL-T, ALT-C
antigen bundle zsh-users/zsh-autosuggestions       # Autosuggestion
antigen bundle reobin/typewritten@main             # ZSH theme

antigen apply

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
source <(ng completion script)

# k9s editor
export KUBE_EDITOR=nvim

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
