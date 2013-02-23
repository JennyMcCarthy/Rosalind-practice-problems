#!/usr/bin/perl
open(FAMILY,"data.txt");
while ($names = <FAMILY>) {
	print $names;
	if ($names =~ /are/) {
		print "has are";
	}
	next;
}
