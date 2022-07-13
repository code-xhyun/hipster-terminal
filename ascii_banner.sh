#!/bin/sh

name=$1
font=$2
brew install figlet
brew install lolcat

if [ $? = 0 ]
then
        echo "\nfiglet -w 100 -c -f ${font:-isometric1} $name | lolcat" >> ~/.zshrc
        source ~/.zshrc
fi
