#!/usr/bin/zsh
#    v1ral_ITS
#*  .bashrc OR .zshrc Alias for awesome terminal cat output anyfile to pastebin
##   https://pastebin.com/u/v1ral_ITS

#    .*rc function alias
#*   needed default pastebin script and default pastebin.conf are lsted after


# Define the alias for which ever rc they choose
to_rc() {
cat <<EOF
	pbin_this() {
		file_this=$*
		(\cat $file_this | pastebin) | xsel -i --clipboard

		printf '\033[033mPASTEBINS_NEW_URL: \033[m'
		echo `xsel --clipboard`
	}
EOF
}


# Execute \$0\ file to add to your .bashrc or .zshrc
echo -e "Which RC: \n1) bashrc \n2) zshrc "
read n

case $n in
	1)
	to_rc >>~/.bashrc && . ~/.bashrc
	;;
	2)
	to_rc >>~/.zshrc && . ~/.zshrc
	;;
	  *) invalid input ;;
esac

# Finished
exit



