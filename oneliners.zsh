#!/local/bin/zsh

# Oneliners, assigned to "Esc + 1"
#**************************************
if [ -x "`which peco`" ]; then

    ONELINERS_MD="./oneliners.md"

    function pepeco() {
        BUFFER=$(grep '>' ${ONELINERS_MD} | peco | sed 's/^.*>//')
        CURSOR=$#BUFFER
        zle clear-screen
    }
    zle -N pepeco
    bindkey '^[1' pepeco
fi

