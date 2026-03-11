# .bashrc

# Required for nano working in alacritty
TERM=xterm-256color

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Aliases
alias la='ls -la'

# Custom prompt
PS1=$'\[\\033[32m\\]\\033[1m\\u\\033[0m \[\\033[37m\\]on \[\\033[34m\\]\\033[1m\\h\\033[0m\[\\033[37m\\] \[\\033[37m\\]at \[\\033[94m\\]\\w\[\\033[37m\\]\\n\\$ '
