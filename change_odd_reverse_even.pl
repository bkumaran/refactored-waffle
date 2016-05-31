use strict;

my $string = "This is a test string";
my @words = split(/\s+/,$string);
my @final_words;
for(my $i=0;$i <= $#words ; $i++){
	if($i % 2 == 0){
		$words[$i] =~ tr /[a-z]/[A-Z]/s;
		push @final_words,$words[$i];
	}else{
		my $final = reverse($words[$i]);
		push @final_words,$final;	
	}		
}

print join(" ",@final_words);
