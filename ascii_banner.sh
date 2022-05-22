#!/bin/sh

name=$1
font=$2
brew install figlet

if [ $? = 0 ]
then
        echo "\nfiglet -w 100 -c -f ${font:-isometric1} $name" >> ~/.zshrc
        source ~/.zshrc
fi
