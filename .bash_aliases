# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#Git 
alias gs='git status'
alias gb='git branch'
alias ga='git add --all'
alias gp='git push origin'
alias gc='git checkout'
alias gca='git commit -a'

#General
alias c='cd ..'
alias l='ls'
alias la='ls -a'
alias br='. ~/.bashrc'
