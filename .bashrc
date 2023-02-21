export PS1="\[\e]0;\w\a\]\n\[\e[1;35m\]\u: \[\e[37m\]\w\[\e[0m\] \[$(tput sgr0)\]\[\033[105;37m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/')\[$(tput sgr0)\] \n> "
