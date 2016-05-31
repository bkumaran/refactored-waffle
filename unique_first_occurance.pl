use strict;

my $string = "Careercup is a good site. Careercup provides a lot of information";
$string =~ tr/[A-Z]/[a-z]/s;
#print $string;

my @words = split(/\s+/,$string);
my %hash;
foreach(@words){
	$hash{$_}++;
}

foreach(@words){
        if($hash{$_} == 1){
		print "Unique first occurance of a word is : $_ \n";
		last;
	}
}
