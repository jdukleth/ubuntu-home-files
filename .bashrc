# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# TODO: terminal prompt styling
if [ "$USER" = "jdukleth" ]; then
    j="\[\033[01;38;5;018m\]j"
    d="\[\033[01;38;5;021m\]d"
    u="\[\033[01;38;5;027m\]u"
    k="\[\033[01;38;5;063m\]k"
    l="\[\033[01;38;5;099m\]l"
    e="\[\033[01;38;5;135m\]e"
    t="\[\033[01;38;5;171m\]t"
    h="\[\033[01;38;5;207m\]h"
    at="\[\033[01;38;5;236m\]@"
    g="\[\033[01;38;5;238m\]g"
    w="\[\033[01;38;5;240m\]w"
    e2="\[\033[01;38;5;242m\]e"
    n="\[\033[01;38;5;244m\]n"

    USER_AND_NAME="$j$d$u$k$l$e$t$h$at$g$w$e2$n"
else
    USER_AND_NAME="\[\033[01;36m\]\u"
fi   

DIRECTORY_COLOR="\[\033[01;38;5;244m\]\w"
SHELL_COLOR="\[\033[01;38;5;250m\]"

export PS1="$USER_AND_NAME $DIRECTORY_COLOR $__git_branch_color$__git_branch$__prompt_tail $SHELL_COLOR"

# uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# move hidden files with *
shopt -s dotglob

# add custom scripts to path
export PATH=$PATH:$HOME/.local/bin

# add functions & aliases
source "${HOME}/.config/bash/.aliases"
source "${HOME}/.config/bash/.functions"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
