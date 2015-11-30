if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias ll='ls -lah'
alias home='cd ~'
alias code='cd ~/code'
alias projects='cd ~/projects'
alias be='bundle exec '
alias gck='git checkout '
alias gs='git status '
alias rt='rake test'

# CLI / Terminal
export PS1="\[\033[01;34m\] \w \[\033[31m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "

#GitHub branch status 
function parse_git_branch {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git::\1)/'
}

#GitHub Auto-Complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
