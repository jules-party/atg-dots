#!/bin/sh

CONFIG=${HOME}/.config

copy_config() {
	files=(starship.toml zshrc-functions.zsh)
	folders=(neofetch picom)

	for file in "${files[@]}"
	do
		cp ${CONFIG}/${file} ./config/${file}
	done

	for folder in "${folders[@]}"
	do
		cp -r ${CONFIG}/${folder} ./config/${folder}
	done
}

copy_dotfiles() {
	files=(.xinitrc .zshrc .Xresources)

	for file in "${files[@]}"
	do
		cp ${HOME}/${file} ./${file##*.}
	done
}

# run functions
copy_config
copy_dotfiles
