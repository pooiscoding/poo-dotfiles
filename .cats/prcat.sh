#!/bin/bash

PATH_TO_THIS_FILE="$(readlink -f $0)"
CATSDIR=${PATH_TO_THIS_FILE%/*}

declare -ax CATS
all_cats=$(ls "$CATSDIR")

counter=1

for cat_file in $all_cats
do
	if [[ ! "$cat_file" =~ cat[0-9]+ ]]; then continue; fi
	CATS[$counter]="$(cat "$CATSDIR"/$cat_file)"
	((counter++))
done

rand_index=$(( ($RANDOM % ${#CATS[@]}) + 1 ))

printf "%s\e[32m%s\e[0m\n%s\n\n%s\n\n%s\n\n" "Welcome, " "$USER" "There is a cat! Have a good day." "${CATS[$rand_index]}" "-------------------------------------------"
