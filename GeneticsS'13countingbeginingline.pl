#!/usr/bin/perl -w
#Count lines that start with a T and have A at 10th postion
#Jenny McCarthy

use strict;
my $string; #Line with T at the beginning
#my $count; #number of time T occurs at the begining of a line

#start counts of lines at 0
my $count_of_lines = 0; #Counter 
my $count_of_A =0; #Count of lines with A at 10th position
my $count_of_both = 0; #count of lines with T and A
#open the file and start the string
open (FILE, $ARGV[0]) or die "cannot open $ARGV[0] : $!";
while ($string = <FILE>) {
	if ($string =~ m/^T/) {
	
		$count_of_lines++; 
		#print $count_of_lines;
	}
	if ($string =~ /^.........A/) {
		$count_of_A++;
	}
	if ($string =~ /^T........A/) {
		$count_of_both++;
	}
}
close (FILE);
print "The count of lines with T $count_of_lines\n";
print "The count of lines with A $count_of_A\n";
print "The count of lines with T and A $count_of_both\n";





#Give variables names
#if ($string =~ m/^T/) { print "yes"; }
#$count = $string++
#open the file to be counted
#open (FILE, $ARGV[0]) or die "cannot open $ARGV[0] : $!";

#while (<FILE>) {
#	if ($string =~ m/^T/);
#}
#close FILE;
#print "$count\n";
#exit;

