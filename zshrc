# Created by newuser for 5.9

# Source Functions file
source ${HOME}/.config/zshrc-functions.zsh

setup_functions=(env_setup alias_setup prompt_setup)

for func in "${setup_functions[@]}"
do
	${func}
	unset -f ${func}
done
unset func
