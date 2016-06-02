#QUESTION 1e

use strict;
use warnings;

print "Enter pattern: ";
my $pat = <STDIN>;
chomp $pat;
print "enter text: ";
while(<>){
	my $text = $_;
		if($text =~ $pat){
			print "$`<$&>$' \n";
		}else{
			print "No match \n";
		}
}
		

