#!/usr/bin/python

"""
FIXME: The program looks way too complex
"""

import sys

if (len(sys.argv) == 3):
	errorlist = sys.argv[1]
	ignorelist = sys.argv[2]

	with open(errorlist) as errorlistwords:
		for line in errorlistwords:
			errorword = line.strip().split('\n')[0]
			found = 0
			with open(ignorelist) as ignorelistwords:				
				for line1 in ignorelistwords:
					if errorword in line1:
						found = 1
						break
				if found == 0:
					print errorword

