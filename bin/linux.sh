#!/bin/bash

##Checks if operating system is Linux
if($(UNAME) != 'Linux'); then
	echo 'Error: operating system is incorrect' >> ./linuxsetup.log
	exit
fi

##Makes .TRASH directory if it doesn't already exist
mkdir -p .TRASH

##Changes .vimrc to .bup_vimrc
mv ~/.vimrc ~.bup_vimrc
##Reports change to log
echo '.vimrc changed to .bup_vimrc' >> ./linuxsetup.log
##Prints vimrc file to a file called .vimrc in the home directory
cat /.dotfiles/etc/vimrc > /~/.vimrc
##Adds statement to the .bashrc file
echo 'source ∼/.dotfiles/etc/bashrc custom' >> /~/.bashrc


