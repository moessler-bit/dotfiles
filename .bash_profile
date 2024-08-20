if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
	exec startx
fi

source "$HOME/.bashrc"
. "$HOME/.cargo/env"

# Created by `pipx` on 2024-08-01 08:54:45
export PATH="$PATH:/home/l466l/.local/bin"
