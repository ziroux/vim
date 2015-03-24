#!/bin/bash
# stuff to do after git clone this repo

# init submodules
git submodule update --init --recursive

# vimrc link
ln -sf $(pwd)/.vimrc ~/
