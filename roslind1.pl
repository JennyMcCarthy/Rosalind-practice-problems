#!/usr/bin/perl

open(GENES ARGV[0]);

$g1 = "A"
$g2 = "C"
$g3 = "T"
$g3 = "G"

while ($gene = <GENES>) {
	if ($gene =~ /$g1/) {
		print "found sequence $g1\n";
	}
	if ($gene =~ /$g2/) {
		print "found sequence $g2\n";
	}
	if ($gene =~ /$g3/) {
		print "found sequence $g3\n";
	}
	if ($gene =~ /$g4/) {
		print "found sequence $g4\n";
	}
	next;
}



