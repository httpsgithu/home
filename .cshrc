# $FreeBSD: release/9.0.0/share/skel/dot.cshrc 170119 2007-05-29 22:07:57Z dougb $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin)

setenv	EDITOR	mcedit
setenv	PAGER	more
setenv	BLOCKSIZE	K

#setenv LANG ru_RU.UTF-8
setenv LC_CTYPE ru_RU.UTF-8
setenv LC_COLLATE POSIX
#setenv LC_ALL ru_RU.UTF-8

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

alias mc	mc -x
alias me	mcedit
alias g		git
alias s		svn
alias m		nice make
alias gm	nice gmake
alias mj	nice make -j $(nproc || sysctl -n hw.ncpu || echo 2)
alias q		exit
alias sc	screen -DR
alias tf	tail -F
alias jf	json_xs <
