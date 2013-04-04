#!/usr/bin/perl -w
open (FILE, $ARGV[0]) or die "cannot open $ARGV[0] : $!"
if ($string =~ m/^T/) {
	print 'match';
} else {
	print 'No match';
}

