#!/bin/bash

PHONEBOOK_ENTRIES="bash_phonebook_entries"

if [ "$#" -lt 1 ]; then
    exit 1
elif [ "$1" = "new" ]; then
    echo "$2" "$3"
    echo $2 $3 >> $PHONEBOOK_ENTRIES
elif [ "$1" = "list" ]; then
		if [ ! -e $PHONEBOOK_ENTRIES ] || [ ! -s $PHONEBOOK_ENTRIES ]; then
				echo "phonebook is empty"
		else
				cat $PHONEBOOK_ENTRIES
		fi
elif [ "$1" = "clear" ]; then
		> $PHONEBOOK_ENTRIES
elif [ "$1" = "remove" ]; then
		echo "You will remove $2's phone number"
		sed -i -E "/($2) ([0-9\-]*)/d" $PHONEBOOK_ENTRIES
elif [ "$1" = "lookup" ]; then
		cat $PHONEBOOK_ENTRIES | grep -E "($2) ([0-9\-]*)"
else
    echo "make sure your argument is right"
fi
