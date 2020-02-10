#!/bin/bash
################################################################################
# .bashrc aliases
################################################################################

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias cdg='cd /ALL/git'
alias cdb='cd /ALL/bash'
alias cda='cd /ALL/ansible'
alias cdc='cd /ALL/chef-repo'

# ls
alias ls='ls -GH'
alias ll='ls -lah'

# spelling
alias cl='clear'
alias clera='clear'
alias vi='vim'

# env
alias dot='. ~/.bash_profile'
alias fdot='. ~/.bash_profile && proxy && clear && cowsay -f tux $(ron) | lolcat ; proxy_clear > /dev/null'
alias oops='sudo $(history -p \!\!)'
alias funlist='declare -F | cut -f3 -d" "'
alias env='env | grep -v PASS | sort'

# random
alias dush='du -sh $(pwd) && echo "" && for i in $(ls) ; do du -sh "$(pwd)/$i" ; done | sort -hr '
alias sudush='sudo du -sh $(pwd) && echo "" && for i in $(ls) ; do sudo du -sh "$(pwd)/$i" ; done | sort -hr '
alias digga='dig +nocmd "$1" any +multiline +noall +answer'
alias pdot='source bin/activate'
alias jiggle='/ALL/Jiggler.app/Contents/MacOS/Jiggler &'
alias gett="curl -ks -u $USER:$SSHPASS "
alias putt="curl -ks -X PUT -u $USER:$SSHPASS "
alias bfg='java -jar ~/Downloads/bfg-1.13.0.jar'
alias treee="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias webpy='python -m SimpleHTTPServer 8000'
alias commit_history='git log --since="last month" --author="$(git config user.name)" --oneline'
alias decode='base64 --decode <<<'

# Stupid
alias lunch='places=(Firehouse Senate BrownDog BasilThai ElVaquero McAlisters SmashBurger AppleSpice) && place_to_go=${places[$RANDOM % ${#places[@]} ]} && echo $place_to_go'
