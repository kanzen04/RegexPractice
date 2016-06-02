#QUESTION 4a
use strict;
use warnings;

my $file_name = $ARGV[0];
open FILE, "<",$file_name;
my $output_text;

while(<FILE>){
	chomp $_;
	my $line = $_;
	my @line_items = split / /, $line;;
	foreach my $line_items (@line_items){
		if ($line_items =~ /(\d\d)\/(\d\d)\/(\d\d)\b/g){

			if ($3 >= 50 && $3 <=99) { 
				$output_text = "$1/$2/19$3";
			}
			else { 
				$output_text = "$1/$2/20$3";
			}	
			print "$output_text \n";
		}
	}		
}
