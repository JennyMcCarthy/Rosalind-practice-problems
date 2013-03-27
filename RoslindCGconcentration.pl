#!/usr/perl
#CG concentrations
#Jenny McCarthy

#use strict;
print "Please tupe file name: ";
$dna_filename = <STDIN>;
chomp $dna_filename;
 #make sure the file can be opened
 unless ( -e $dna_filename) {
 	 print "FIle \"$dna_filename\" doesn\'t exist\n";
 	 exit;
 }
 unless ( open(DNAFILE, $dna_filename) ) {
 	 print "cannot open file \"$dna_filename\"\n\n";
 	 exit;
 }
@DNA = <DNAFILE>;
close DNAFILE;
$DNA = join( '',@DNA);
#remove white spaces
$DNA=~ s/\s//g;

