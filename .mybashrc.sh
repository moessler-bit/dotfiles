export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

alias nv="nvim"
set _JAVA_AWT_WM_NONREPARENTING=1
export PS1='$(RETVAL=$?; [ $RETVAL -ne 0 ] && echo "\[\033[0;31m\][$RETVAL]")[\u@\h \W]\$ \[\033[0m\]'

# open last saved dir
if [[ -f "$HOME/.predir" ]]; then
	cd $(tail -n1 "$HOME/.predir") > /dev/null 2>&1
fi

# save dir
#sd(){
#	pwd >> "$HOME/.predir"
#	perl -e 'my $file = shift; open my $fh, "<", $file or die "Cannot open $file: $!"; my @lines = <$fh>; close $fh; open my $out, ">", $file or die "Cannot write to $file: $!"; my %seen; print $out reverse grep { !$seen{$_}++ } reverse @lines; close $out;' "$HOME/.predir"
#}

# get dir
#gd(){
#	[[ -f "$HOME/.predir" ]] && cd $(cat "$HOME/.predir" | fzf -i)
#}

# Save the current directory to a history file
sd() {
    # Append the current working directory (pwd) to the history file at $HOME/.predir
    pwd >> "$HOME/.predir"
    
    # Use Perl to remove duplicate entries while maintaining the order
    perl -e '
        my $file = shift; 
        open my $fh, "<", $file or die "Cannot open $file: $!"; 
        my @lines = <$fh>; 
        close $fh; 
        open my $out, ">", $file or die "Cannot write to $file: $!"; 
        my %seen; 
        print $out reverse grep { !$seen{$_}++ } reverse @lines; 
        close $out;
    ' "$HOME/.predir"
}

# Retrieve a directory from history and change to it
gd() {
    # Check if the history file exists
    if [[ -f "$HOME/.predir" ]]; then
        # Use fzf (fuzzy finder) to interactively select a directory from the history
        selected_dir=$(cat "$HOME/.predir" | fzf -i)
        
        # If a directory is selected (not empty), change to that directory
        if [[ -n "$selected_dir" ]]; then
            cd "$selected_dir" && sd # Change to the selected directory and call sd to save it to the history
        fi
    fi
}

# find dir
fid(){
	cd $(find -maxdepth 3 -type d | fzf -i)
}
