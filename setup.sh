#!/bin/bash

mv Backgrounds ~/
mv */ ~/.config/

sudo pacman -S $(echo $(cat pkglist.txt | cut -d' ' -f1))