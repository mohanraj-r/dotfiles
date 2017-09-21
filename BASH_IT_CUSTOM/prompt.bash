# Add time elapsed to prompt
# http://jakemccrary.com/blog/2015/05/03/put-the-last-commands-run-time-in-your-bash-prompt/
#
# https://github.com/justjanne/powerline-go
function _update_ps1() {
    PS1="$(powerline-go -error $? -mode compatible \
            -modules "venv,ssh,cwd,perms,git,jobs,exit,root")"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# export PS1=_update_ps1

export TERM="xterm-256color"
export PROMPT_COMMAND
