#!/usr/perl
#DNA to Protien
#Jenny McCarthy
use strict;
my $dna; #original DNA
my $protein; #protein that is produced
my $codon; #codons base of 3
my $DNA; #Original DNA

#DNA file
$dna = <STDIN>;

#translate DNA to proteins
for(my $i=0; $i < (length($dna) - 2) ; $i += 3) {
	$codon = substr($dna,$i,3);
	$protein .= codon2aa($codon);
}

print "Original DNA\n\n $dna\n\n to the protein sequence protein\n\n $protein\n\n";
exit;

#
#codon2aa
#subroutine of 3 DNA charecters to an amino acid
sub codon2aa {
	my($codon) = @_;
	if ( $codon =~ /UCA/i ) { return 'S' } #Serine
	elsif ( $codon =~ /UCC/i ) { return 'S' } #Serine
	elsif ( $codon =~ /UCG/i ) { return 'S' } #Serine
	elsif ( $codon =~ /UCU/i ) { return 'S' } #Serine
	elsif ( $codon =~ /UUU/i ) { return 'F' } #Phenylalanine
	elsif ( $codon =~ /UUC/i ) { return 'F' } #Phenylalanine
	elsif ( $codon =~ /UUA/i ) { return 'L' } #Leucine
	elsif ( $codon =~ /UUG/i ) { return 'L' } #Leucine
	elsif ( $codon =~ /CUU/i ) { return 'L' } #Leucine
	elsif ( $codon =~ /CUC/i ) { return 'L' } #Leucine
	elsif ( $codon =~ /CUA/i ) { return 'L' } #Leucine
	elsif ( $codon =~ /CUG/i ) { return 'L' } #Leucine
	elsif ( $codon =~ /AUU/i ) { return 'I' } #Isoleucine
	elsif ( $codon =~ /AUC/i ) { return 'I' } #Isoleucine
	elsif ( $codon =~ /AUA/i ) { return 'I' } #Isoleucine
	elsif ( $codon =~ /AUG/i ) { return 'M' } #Methionine
	elsif ( $codon =~ /GUU/i ) { return 'V' } #Valine
	elsif ( $codon =~ /GUC/i ) { return 'V' } #Valine
	elsif ( $codon =~ /GUA/i ) { return 'V' } #Valine
	elsif ( $codon =~ /GUG/i ) { return 'V' } #Valine
	elsif ( $codon =~ /CCU/i ) { return 'P' } #Proline
	elsif ( $codon =~ /CCC/i ) { return 'P' } #Proline
	elsif ( $codon =~ /CCA/i ) { return 'P' } #Proline
	elsif ( $codon =~ /CCG/i ) { return 'P' } #Proline
	elsif ( $codon =~ /ACU/i ) { return 'T' } #Threonine
	elsif ( $codon =~ /ACC/i ) { return 'T' } #Threonine
	elsif ( $codon =~ /ACA/i ) { return 'T' } #Threonine
	elsif ( $codon =~ /ACG/i ) { return 'T' } #Threonine
	elsif ( $codon =~ /GCU/i ) { return 'A' } #Alanine
	elsif ( $codon =~ /GCC/i ) { return 'A' } #Alanine
	elsif ( $codon =~ /GCA/i ) { return 'A' } #Alanine
	elsif ( $codon =~ /GCG/i ) { return 'A' } #Alanine
	elsif ( $codon =~ /UAU/i ) { return 'Y' } #Tyrosine
	elsif ( $codon =~ /UAC/i ) { return 'Y' } #Tyrosine
	elsif ( $codon =~ /UAA/i ) { return '_' } #stop
	elsif ( $codon =~ /UAG/i ) { return '_' } #stop
	elsif ( $codon =~ /CAU/i ) { return 'H' } #Histidine
	elsif ( $codon =~ /CAC/i ) { return 'H' } #Histidine
	elsif ( $codon =~ /CAA/i ) { return 'Q' } #Glutamine
	elsif ( $codon =~ /CAG/i ) { return 'Q' } #Glutamine
	elsif ( $codon =~ /AAU/i ) { return 'N' } #Asparagine
	elsif ( $codon =~ /AAC/i ) { return 'N' } #Asparagine
	elsif ( $codon =~ /AAA/i ) { return 'K' } #lysine
	elsif ( $codon =~ /AAG/i ) { return 'K' } #lysine
	elsif ( $codon =~ /GAU/i ) { return 'D' } #Aspartic Acid
	elsif ( $codon =~ /GAC/i ) { return 'D' } #Aspartic Acid
	elsif ( $codon =~ /GAA/i ) { return 'E' } #Glutamic Acid
	elsif ( $codon =~ /GAG/i ) { return 'E' } #Glutamic Acid
	elsif ( $codon =~ /UGU/i ) { return 'C' } #Cysteine
	elsif ( $codon =~ /UGC/i ) { return 'C' } #Cysteine
	elsif ( $codon =~ /UGA/i ) { return '_' } #stop
	elsif ( $codon =~ /UGG/i ) { return 'W' } #Tryptophan
	elsif ( $codon =~ /CGU/i ) { return 'R' } #Arginine
	elsif ( $codon =~ /CGC/i ) { return 'R' } #Arginine
	elsif ( $codon =~ /CGA/i ) { return 'R' } #Arginine
	elsif ( $codon =~ /CGG/i ) { return 'R' } #Arginine
	elsif ( $codon =~ /AGU/i ) { return 'S' } #Serine
	elsif ( $codon =~ /AGC/i ) { return 'S' } #Serine
	elsif ( $codon =~ /AGA/i ) { return 'R' } #Arginine
	elsif ( $codon =~ /AGG/i ) { return 'R' } #Arginine
	elsif ( $codon =~ /GGU/i ) { return 'G' } #Glycine
	elsif ( $codon =~ /GGC/i ) { return 'G' } #Glycine
	elsif ( $codon =~ /GGA/i ) { return 'G' } #Glycine
	elsif ( $codon =~ /GGG/i ) { return 'G' } #Glycine
	else {
		print STDERR "Bad codon \"$codon\"!!\n";
		exit;
	}
}

