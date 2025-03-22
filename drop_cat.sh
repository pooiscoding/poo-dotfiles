#!/bin/bash

if [[ $# -gt 0 ]]; then echo "Usage: ./drop_cat.sh" && exit 1; fi

rm -rf ~/.cats
rm -f ~/.mycmd/prcat

re="$(rm -d ~/.mycmd 2>&1)"

PATH_LINE=$(echo -n "PATH=\\\"\$PATH:$(readlink -f ~)/.mycmd\\\"" \
		| sed 's/\//\\\//g')

if [[ -z "$re" ]]; then sed -i "/$PATH_LINE/d" ~/.bashrc; fi

sed -i '/prcat/d' ~/.bashrc
