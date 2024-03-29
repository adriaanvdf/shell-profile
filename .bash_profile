# Set time format for command history
HISTTIMEFORMAT='%F %T '

# Show current path and git branch
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\$(git_branch)\[\033[m\] \$ "


