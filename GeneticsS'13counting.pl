#!/usr/bin/perl -w
#counting lines of file dividing by number
#Jenny McCarthy
use strict;
my $dna_filename; #file name
my $lines; #lines of textfile

#stat count of lines at 0
$lines = 0;

#Open the file and start a count at 0 for every line add 1
open (FILE, $ARGV[0]) or die "cannot open $ARGV[0] : $!";
 
while (<FILE>){
	$lines++;
}
close FILE;
print "$lines\n";
exit;
	
