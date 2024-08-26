export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

alias nv="nvim"
set _JAVA_AWT_WM_NONREPARENTING=1
export PS1='$(RETVAL=$?; [ $RETVAL -ne 0 ] && echo "\[\033[0;31m\][$RETVAL]")[\u@\h \W]\$ \[\033[0m\]'
