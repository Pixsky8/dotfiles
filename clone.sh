#! /bin/bash --posix

if [ ! (-d tmp) ]; then
    mkdir tmp
fi

cd tmp
git clone git@github.com:Pixsky8/dotfiles.git
