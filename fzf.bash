# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nrfrd/.fzf/bin* ]]; then
  export PATH="$PATH:/home/nrfrd/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/nrfrd/.fzf/man* && -d "/home/nrfrd/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/nrfrd/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/nrfrd/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/nrfrd/.fzf/shell/key-bindings.bash"

