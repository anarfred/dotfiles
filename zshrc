#             _   _     _      _
#  __ _  ___ | |_| |__ | | ___| |_ _   _     
# / _` |/ _ \| __| '_ \| |/ _ \ __| | | |    
#| (_| | (_) | |_| |_) | |  __/ |_| |_| |    
# \__, |\___/ \__|_.__/|_|\___|\__|\__,_|    
# |___/                                      
#       https://www.youtube.com/user/gotbletu
#       https://twitter.com/gotbletu         
#       https://plus.google.com/+gotbletu    
#       https://github.com/gotbletu          
#       gotbleu@gmail.com                    
#
#
# Manual
# Have less display colours
# from: https://wiki.archlinux.org/index.php/Color_output_in_console#man
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal
#
# LS
eval "$(dircolors /home/nrfrd/.dir_colors)"

#-------- Ohmyzsh {{{
#------------------------------------------------------

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Ajout Personnel
export PATH="/usr/sbin:/sbin:/bin:/usr/games:/usr/local/texlive/2016/bin/x86_64-linux:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/home/nrfrd/.oh-my-zsh

# Tmuxinator autocompletion
#source ~/bin/tmuxinator.zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="norm"
source ~/.shell_prompt.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dnf)

#source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#export EDITOR=/usr/bin/nvim
#else
#  export EDITOR='nvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Configuration empruntée à Globetu
#
# }}}
#-------- History {{{
#------------------------------------------------------
# get more info: $man zshoptions

setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt INTERACTIVE_COMMENTS        # pound sign in interactive prompt
HISTFILE=~/.zsh_history            # where to save zsh history
HISTSIZE=10000
SAVEHIST=10000
cfg-history() { $EDITOR $HISTFILE ;}

#
# }}}
#-------- Vim Mode {{{
#------------------------------------------------------
# enable vim mode on commmand line
bindkey -v

# edit command with editor
# http://stackoverflow.com/a/903973
# usage: type someshit then hit Esc+v
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line



# no delay entering normal mode
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
# function zle-line-init zle-keymap-select {
#     RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#     RPS2=$RPS1
#     zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
# bindkey -a '^R' redo	# conflicts with history search hotkey
bindkey -a '^T' redo
bindkey '^?' backward-delete-char	#backspace

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# use cursor blinker color as indicator of vi mode
# http://andreasbwagner.tumblr.com/post/804629866/zsh-cursor-color-vi-mode
# http://reza.jelveh.me/2011/09/18/zsh-tmux-vi-mode-cursor

# bug; 112 ascii randomly showing up

# }}}
#-------- Autocomplete {{{
#------------------------------------------------------
# http://www.refining-linux.org/archives/40/ZSH-Gem-5-Menu-selection/
# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/completion.zsh

autoload -U compinit && compinit        # enable autocompletion
fpath+=(~/.zsh/completion)              # set path to custom autocompletion
zstyle ':completion:*' menu select      # to activate the menu, press tab twice
unsetopt menu_complete                  # do not autoselect the first completion entry
setopt completealiases                  # autocompletion CLI switches for aliases
zstyle ':completion:*' list-colors ''   # show colors on menu completion

# http://unix.stackexchange.com/a/297000
setopt complete_in_word                 # tab completion from both ends
setopt glob_complete                    # wildcard completion eg. *-tar

# autocomplete case-insensitive (all),partial-word and then substring
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# better completion for killall
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

# when new programs is installed, auto update autocomplete without reloading shell
zstyle ':completion:*' rehash true

#}}}
#-------- Suffix Alias {{{
#------------------------------------------------------
# open file with default program base on extension
# Ex: 'alias -s avi=mplayer' makes 'file.avi' execute 'mplayer file.avi'

# https://unix.stackexchange.com/questions/39961/zsh-alias-s-with-parameter
background() {
  "$@" &
}

alias -s {avi,flv,mkv,mp4,mpeg,mpg,ogv,wmv}=$PLAYER
alias -s {flac,mp3,ogg,wav}=$MUSICER
alias -s {gif,GIF,jpeg,JPEG,jpg,JPG,png,PNG}="background $IMAGEVIEWER"
alias -s {djvu,pdf,ps}="background $READER"
alias -s txt=$EDITOR
alias -s epub="background $EBOOKER"
alias -s {cbr,cbz}="background $COMICER"
# might conflict with emacs org mode
alias -s {at,ch,com,de,net,org}="background $BROWSER"

# archive extractor
alias -s ace="unace l"
alias -s rar="unrar l"
alias -s {tar,bz2,gz,xz}="tar tvf"	#tar.bz2,tar.gz,tar.xz
alias -s zip="unzip -l"

#}}}
#-------- External Files {{{
#------------------------------------------------------

# load alias/functions that works with both zsh/bash
if [[ -f ~/.aliasrc ]]; then
  source ~/.aliasrc
fi

#}}}
#-------- Keybinding {{{
#------------------------------------------------------
# manpages for keybindings: $man zshzle

# partial history search using up and down arrow keys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Bang! Previous Command Hotkeys
# print previous command but only the first nth arguments
# Alt+1, Alt+2 ...etc
# http://www.softpanorama.org/Scripting/Shellorama/bash_command_history_reuse.shtml#Bang_commands
bindkey -s '\e1' "!:0 \t"        # last command
bindkey -s '\e2' "!:0-1 \t"      # last command + 1st argument
bindkey -s '\e3' "!:0-2 \t"      # last command + 1st-2nd argument
bindkey -s '\e4' "!:0-3 \t"      # last command + 1st-3rd argument
bindkey -s '\e5' "!:0-4 \t"      # last command + 1st-4th argument
bindkey -s '\e`' "!:0- \t"       # all but the last argument
bindkey -s '\e9' "!:0 !:2* \t"   # all but the 1st argument (aka 2nd word)

#}}}
#-------- ZMV {{{
#------------------------------------------------------
# http://onethingwell.org/post/24608988305/zmv
autoload zmv

# }}}
#-------- Fuzzy Finder {{{
#------------------------------------------------------
#

# function bind to a hotkey
fzf_history() { zle -I; eval $(history | fzf +s | sed 's/ *[0-9]* *//') ; }; zle -N fzf_history; bindkey '^F' fzf_history

  fzf_killps() { zle -I; ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9} ; }; zle -N fzf_killps; bindkey '^Q' fzf_killps

    fzf_cd() { zle -I; DIR=$(find ${1:-*} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf) && cd "$DIR" ; }; zle -N fzf_cd; bindkey '^E' fzf_cd
      # }}}
#-------- Scripts {{{
#------------------------------------------------------
#
doi2bib()
{
  echo >> bib.bib
  curl -s "http://api.crossref.org/works/$1/transform/application/x-bibtex" >> bib.bib;
  echo >> bib.bib
}

recent()
{
  find ~/Archives/nrfrd/Dropbox -type f -regex ".*\.\(md\|tex\)" -mtime -$1 -exec nvim "{}" +
}
#}}}

      export NVM_DIR="/home/nrfrd/.nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

      #-------- Thème base16
      BASE16_SHELL=$HOME/.config/base16-shell/
      [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
      #-------- ZSH Syntax Highlightning (DOIT RESTER EN BAS) {{{
      [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
      #source /home/nrfrd/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
      # }}}

      #source /etc/bash_completion.d/climate_completion

      #chmod +x ~/.vocab
      #~/.vocab
