#!/bin/bash
#//+ ITS_ function to easily install this package,
#// and check operating systems presense of any needed package.

cd "$(dirname "$0")"

# Start config
chmod +x alias.zshrc ITS-nall.sh pastebin required_tools.sh

# Set alias
./alias.zshrc

# Add pastebin and pastebin.conf to PATH
echo -e "Add pastebin and pastebin.conf to ~/bin PATH: \n1) yes \n2) no"
read n

case $n in
	1)
	cp -t ~/bin pastebin*
	;;
	2)
	echo -e "Add them to your /usr/local/bin PATH: \n1a) yes \n2a) no"
	read nn

	case $nn in
		1a)
		sudo cp -t /usr/local/bin pastebin*
		;;
		2a)
		continue
		;;
	esac
	;;
		*) invalid response ;;
esac

# Check required tools
./required_tools.sh

# Cleanup Salutations And Exit
echo Perfection..
echo
echo Thanks!
echo
exit
