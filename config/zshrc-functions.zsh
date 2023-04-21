#!/usr/bin/env zsh

env_setup() {
	PATH="${PATH}:${HOME}/.local/bin"
	PATH="${PATH}:${HOME}/.cargo/bin"
	EDITOR=vim
	VISUAL=vim
	BROWSER=/usr/bin/firefox
	DESKTOP_SESSION=dwm
}

alias_setup() {
	alias cd="z"
	alias ls="ls --color"
	alias l="ls -la"
	alias ll="ls -l"
	alias la="ls -a"
}

prompt_setup() {
	# Gentoo Portage Completions
	autoload -U compinit promptinit
	compinit
	promptinit; prompt gentoo
	zstyle ':completion::complete:*' use-cache 1

	# Starship
	eval "$(starship init zsh)"
	eval "$(zoxide init zsh)"
}
