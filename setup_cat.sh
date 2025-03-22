#!/bin/bash

if [[ $# -gt 0 ]]; then echo "Usage: ./setup_cat.sh" && exit 1; fi

test ! -d ~/.cats && mkdir ~/.cats

for i in $(seq 1 6)
do
	curl -fLsS -o ~/.cats/cat$i \
		-O "https://raw.githubusercontent.com/pooiscoding/poo-dotfiles/refs/heads/main/.cats/cat$i"
done

curl -fLsS -o ~/.cats/prcat.sh \
	-O "https://raw.githubusercontent.com/pooiscoding/poo-dotfiles/refs/heads/main/.cats/prcat.sh"

chmod +x ~/.cats/prcat.sh

test ! -d ~/.mycmd && mkdir ~/.mycmd

echo "" >> ~/.bashrc
echo 'PATH="$PATH:'"$(readlink -f ~)/.mycmd"'"' >> ~/.bashrc
echo "prcat" >> ~/.bashrc

ln -s ~/.cats/prcat.sh ~/.mycmd/prcat

rm -f $0
