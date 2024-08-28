export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

alias nv="nvim"
set _JAVA_AWT_WM_NONREPARENTING=1
export PS1='$(RETVAL=$?; [ $RETVAL -ne 0 ] && echo "\[\033[0;31m\][$RETVAL]")[\u@\h \W]\$ \[\033[0m\]'

# open last saved dir
if [[ -f "$HOME/.predir" ]]; then
	cd $(tail -n1 "$HOME/.predir") || return
fi

# save dir
sd(){
	pwd >> "$HOME/.predir"
}

# open dir
od(){
	[[ -f "$HOME/.predir" ]] && cd $(cat "$HOME/.predir" | fzf)
}
