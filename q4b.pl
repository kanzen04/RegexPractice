#QUESTION 4b

use strict;
use warnings;

#length of word
my $length = $ARGV[0];

#this int position character is passed as character a
my $word_position_a = $ARGV[1];

#this character is in position word_position_a
my $character_a = $ARGV[2];

#this int position has character b
my $word_position_b = $ARGV[3];

#this character is in int position word_position_b
my $character_b = $ARGV[4];

my @pattern = ('.') x $length;
$pattern[$word_position_a-1] = $character_a;

$pattern[$word_position_b-1] = $character_b;
my $search_pattern = "^".join ('', @pattern) . "\$";
print "Searching for pattern:  /$search_pattern/\n";

open(FILE_IN, "/usr/share/dict/words") || die;

while(my $line = <FILE_IN>){
	if ($line =~ /$search_pattern/){
		print "$line \n";
	}
}

close FILE_IN;

