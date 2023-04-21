#!/bin/sh

CONFIG=${HOME}/.config

copy_config() {
	files=(starship.toml zshrc-functions.zsh)
	folders=(neofetch picom)

	for file in "${files[@]}"
	do
		cp ./config/${file} ${CONFIG}/${file}
	done

	for folder in "${folders[@]}"
	do
		cp -r ./config/${folder} ${CONFIG}/${folder}
	done
}

copy_dotfiles() {
	files=(.xinitrc .zshrc .Xresources)

	for file in "${files[@]}"
	do
		cp  ./${file##*.} ${HOME}/${file}
	done
}

# run functions
copy_config
copy_dotfiles
