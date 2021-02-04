export DOTLINUX="$HOME/.linux"

# >>> conda initialize >>>
__conda_setup="$('$HOME/bin/conda/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/bin/conda/etc/profile.d/conda.sh" ]; then
        . "$HOME/bin/conda/etc/profile.d/conda.sh"
    else
	export PATH="$HOME/bin/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# source antigen
source $DOTLINUX/submodules/antigen/antigen.zsh

# load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

# load the theme
antigen theme ys

# aliases
# alias tmux="tmux -2"

antigen apply
