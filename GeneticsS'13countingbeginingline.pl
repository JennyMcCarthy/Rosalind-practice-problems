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
my $lines; #total number of lines in the file
#open the file and start the string
<<<<<<< HEAD
open (FILE, $ARGV[0]) or die "cannot open $ARGV [0] : $!";
=======
open (FILE, $ARGV[0]) or die "cannot open $ARGV[0] : $!";
>>>>>>> f41290753255ac95ff51f896431cb12ec5055f41
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
	$lines++; {
	}
}
close (FILE);
print "The count of lines with T $count_of_lines\n";
print "The count of lines with A $count_of_A\n";
print "The count of lines with T and A $count_of_both\n";
print "The total number of lines $lines\n";
#percentages of T at beginning
my $Tpercent = $count_of_lines /$lines; #percent of T
#percent of A at 10th postion
my $Apercent = $count_of_A /$lines; #percent of A
#percent of both T and A
my $bothpercent = $count_of_both /$lines; #percent of both A and T
#print the percents
print "percent of T $Tpercent\n";
print "percent of A $Apercent\n";
print "percent of both $bothpercent\n";






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

