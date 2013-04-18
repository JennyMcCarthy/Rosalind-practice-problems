#!/usr/bin/perl -w
#Counting each base and getting the percetage
#Jenny McCarthy

use strict;

#start my counts
my $count_of_A = 0; #Counts of capital A
my $count_of_T = 0; #count of capital T
my $count_of_C = 0; #Count of capital C
my $count_of_G = 0; #Count of capital G
my $count_of_N = 0; #count of Capital N
my $count_of_a = 0; #count of lower a
my $count_of_t = 0; #count of lower t
my $count_of_c = 0; #count of lower c
my $count_of_g = 0; #count of lower g
my $count_of_n = 0; #count of lower n
my $basecount = 0; #total number of bases
my $string; #nucleotide base

#open the file
open (FILE, $ARGV[0]) or die "Cannot open $ARGV [0] : $!";
while ($string = <FILE>) {
	unless ($string =~ /^>/ ) {
			{
		chomp $string; 
			$basecount += length($string);
		}
		while ($string =~ /A/g) {
			$count_of_A++;
		}
		while ($string =~ /T/g) {
			$count_of_T++;
		}
		while ($string =~ /C/g) {
			$count_of_C++;
		}
		while ($string =~ /G/g) {
			$count_of_G++;
		}
		while ($string =~ /N/g) {
			$count_of_N++;
		}
		while ($string =~ /a/g) {
			$count_of_a++;
		}
		while ($string =~ /t/g) {
			$count_of_t++;
		}
		while ($string =~ /c/g) {
			$count_of_c++;
		}
		while ($string =~ /g/g) {
			$count_of_g++;
		}
		while ($string =~ /n/g) {
			$count_of_n++;
		}
	}
}
close (FILE);
print "The number of capital A $count_of_A\n";
print "The number of capital T $count_of_T\n";
print "The number of capital C $count_of_C\n";
print "The number of capital G $count_of_G\n";
print "The number of capital N $count_of_N\n";
print "The number of lower case a $count_of_a\n";
print "The number of lower case t $count_of_t\n";
print "The number of lower case c $count_of_c\n";
print "The number of lower case g $count_of_g\n";
print "The number of lower case n $count_of_n\n";
print "Total number of bases $basecount\n";

#percent values
my $Apercent = $count_of_A /$basecount; #percent of Capital A
my $Tpercent = $count_of_T /$basecount; #% of capital T
my $Cpercent = $count_of_C /$basecount; #% of capital C
my $Gpercent = $count_of_G /$basecount; #% of Capital G
my $Npercent = $count_of_N /$basecount; #% of capital N
my $apercent = $count_of_a /$basecount; #% of lower a
my $tpercent = $count_of_t /$basecount; #% of lower t
my $cpercent = $count_of_c /$basecount; #% of lower c
my $gpercent = $count_of_g /$basecount; #% of lower g
my $npercent = $count_of_n /$basecount; #% of lower n

#find the precentages
print "The percent of capital A $Apercent\n";
print "percent of capital T $Tpercent\n";
print "percent of capital C $Cpercent\n";
print "percent of capital G $Gpercent\n";
print "percent of capital N $Npercent\n";
print "percent of lower a $apercent\n";
print "percent of lower t $tpercent\n";
print "percent of lower c $cpercent\n";
print "percent of lower g $gpercent\n";
print "percent of lower n $npercent\n";
