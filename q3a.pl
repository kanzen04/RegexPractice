#QUESTION 3a
use strict;
use warnings;

my $pat = "";
print "Enter course name: ";
while (<>){
	if ($_ =~ /^(CSE|ISE)[1-4]{1}\d{2}(-[1-4]{1}\d{2})?$/ig){
		print "Match: $& \n";
	}
	else{
		print "No match \n";
	}
}


