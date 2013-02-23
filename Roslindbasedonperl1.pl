#!/usr/bin/perl -w
#counting nucleotide bases
#Jenny McCarthy
#declare variable with use strict to modify
use strict;
my $dna_filename; #input file name
my $DNA; #DNA sequence
my $count_of_A; #A nucleotides
my $count_of_C; #C nucleotides
my $count_of_G; #G nucleotides
my $count_of_T; #T nucleotides
my $errors; #errors
my @DNA; #DNA input array
my $base; #nucleotide base

#name of the file with the DNA sequence
print "Please type the filename of the DNA sequence data: ";

$dna_filename = <STDIN>;

chomp $dna_filename; 

#open the file
unless ( open(DNAFILE, $dna_filename) ) {
	print "Cannot open file \"$dna_filename\"\n\n";
	exit;
}

#array variable @DNA
@DNA = <DNAFILE>;

#close file
close DNAFILE;

#put DNA sequence into a single string
$DNA = join( '', @DNA);

#remove whitespace
$DNA =~ s/\s//g;

#explode the DNA into a new array
@DNA = split( '', $DNA );

#start counts of nucleotide at zero
$count_of_A = 0;
$count_of_C = 0;
$count_of_G = 0;
$count_of_T = 0;
$errors = 0;

#loop through array and count each type
foreach $base (@DNA) {
	if (($base eq 'A' ) or ($base eq 'a' )) {
		++$count_of_A;
	} elsif (( $base eq 'C' ) or ($base eq 'c' )) {
		++$count_of_C;
	} elsif (( $base eq 'G' ) or ($base eq 'g' )) {
		++$count_of_G; 
	} elsif (( $base eq 'T' ) or ($base eq 't' )) {
		++$count_of_T;
	} else { 
		print "error $base\n";
		++$errors;
	}
}

#print results
print "A = $count_of_A\n";
print "C = $count_of_C\n";
print "G = $count_of_G\n";
print "T = $count_of_T\n";
print "errors = $errors\n";

exit;

