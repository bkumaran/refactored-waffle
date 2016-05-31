use strict;
my $string = "I found an apple in a tree." ;

my $count = $string =~ s/ a / a /g;
print $count."\n";
print $string;
