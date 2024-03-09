#!/usr/bin/env python
import re

import sys
import os

PHONEBOOK_ENTRIES = "python_phonebook_entries"

def main():
	if len(sys.argv) < 2:
		exit(1)
	elif sys.argv[1] == "new":
		with open(PHONEBOOK_ENTRIES, 'a+') as f:
			f.write(sys.argv[2] + " " + sys.argv[3] + '\n')
		print('write success')
	elif sys.argv[1] == "list":
		with open(PHONEBOOK_ENTRIES, 'r') as f:
			content = f.readlines()
		for line in content:
			print(line)
		# print('list function')
	elif sys.argv[1] == "clear":
		with open(PHONEBOOK_ENTRIES, 'w+') as f:
			f.truncate(0)
			# f.write(sys.argv[2] + " " + sys.argv[3])
	elif sys.argv[1] == "lookup":
		with open(PHONEBOOK_ENTRIES, 'r') as f:
			content = f.readlines()
		for line in content:
			if line.count(sys.argv[2]):
				print(line)
	elif sys.argv[1] == "remove":
		with open(PHONEBOOK_ENTRIES, 'r') as f:
			content = f.readlines()
			print(content)
		newcontent = []
		pattern = f'^{sys.argv[2]} \d*$'
		for line in content:
			if not re.match(pattern, line):
				newcontent.append(line)
		print(newcontent)
		if newcontent:
			with open(PHONEBOOK_ENTRIES, 'w') as f:
				f.writelines(newcontent)
	else:
		print('check your argument')


if __name__ == "__main__":
    main()
