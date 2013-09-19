# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Mercurial branch & status
hg_branch() {
    hg branch 2> /dev/null | \
        awk '{ printf " [HG:" $1}'
    hg status 2> /dev/null \
      | awk '$1 == "?" { unknown = 1 } 
             $1 == "!" { unknown = 1 }
             $1 != "?" { changed = 1 }
             END {
               if (changed) printf "+"
               if (unknown) printf "*"
             }'
    hg branch 2> /dev/null | \
        awk '{ printf "]"}'

}

# prompt
export PS1='\[\033[1;36m\]\u\[\033[0m\]@\[\033[1;36m\]\h\[\033[0m\]:\[\033[1;32m\]\w\[\033[1;33m\]$(hg_branch)$(__git_ps1 " [GIT:%s]")\[\033[0m\]\$ '

# git status
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1

# rbenv
eval "$(rbenv init -)"

# include local customizations
if [ -f "$HOME/.bashrc_local" ]; then
  . "$HOME/.bashrc_local"
fi
