#!/usr/bin/perl
use strict;

my $n=10;
my @output=();
my $j=0;
for (my $i=0;$i<=$n;$i++){
	my $count = scalar @output;
	print "\$count=$count";
	for ($j = $count ; $j < ($count + $i); $j++){
		$output[$j]=0;
	}
	push(@output,$i);
}

for(my $k=0;$k<=$#output;$k++){
	print $output[$k]."\n";
}
