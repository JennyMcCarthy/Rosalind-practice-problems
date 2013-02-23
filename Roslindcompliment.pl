#!/usr/bin/perl -w
#Complimenting base pair DNA
#Jenny McCarthy

use strict;
my $DNA; #original DNA
my $revcom; #complimenting DNA

#The DNA
$DNA = <STDIN>;

#Print the originial DNA strand
print "Original DNA:\n\n";

print "$DNA\n\n";

#compliment original DNA
$revcom = reverse $DNA;

#set up the reverse compliment
$revcom =~ tr/ACGTacgt/TGCAtgca/;

#complimented DNA
print "Here is the complimenting strand of DNA:\n\n";

print "$revcom\n";

exit;

