#!/usr/local/bin/python
import random

def allsort(lists):
	random.shuffle(names);
	print "==shuffle==";
	for name in names:
		print name

def getlists(file):
	return open(file).read().splitlines()
def winner(lists):
	random.shuffle(lists)
	print lists[0]
	

names = getlists("name.txt")
winner(names);



