# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

PATH=/opt/riscv/bin:$PATH
PATH=/home/noah/riscv/riscv-pk/build:$PATH
PATH=/opt/Xilinx/Vivado/2024.1/bin:$PATH
LD_LIBRARY_PATH=/opt/Xilinx/Vivado/2024.1/lib/lnx64.o:$LD_LIBRARY_PATH

export PATH="$PATH:$HOME/bin"  # for any local /bin executables

# list automatically on directory change
function cd {
    builtin cd "$@" && ls -F
}
