#!/bin/bash
################################################################################
# .bash_profile
################################################################################
BASH_HOME="/ALL/bash"
for FILE in $BASH_HOME/.exports $BASH_HOME/.bash_colors $BASH_HOME/.functions $BASH_HOME/.bashrc ; do
  if [ -f $FILE ] ; then
    . $FILE
  fi
done

if [ -f $BASH_HOME/.vimrc ] ; then
  ln -sf $BASH_HOME/.vimrc ~/.vimrc
fi

# iTerm profile
if [ "$TERM_PROGRAM" == "iTerm.app" ] ; then
  iterm_profile "Default"
fi
