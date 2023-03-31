#!/bin/bash

##Remove .vimrc file in home directory
rm /~/.vimrc
##Removes line from the .bashrc file
sed -i 's/‘source∼/.dotfiles/bashrc_custom//g' /~/.bashrc
##Removes .TRASH directory in home directory
rm -rf /~/.TRASH


