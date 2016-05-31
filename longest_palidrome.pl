use strict;
my $str = "jafabccbaajaapa";
my @arr = split(//,$str);
my @palindrome_arr=(0,"0");
for(my $i=0; $i<= $#arr ; $i++){
	for (my $j=1;$j < $#arr;$j++){
		my $combin = $arr[$i] . substr($str,$i+1,$j);
		if ( $combin eq reverse($combin)){
			my $length = length($combin);
			#print $length."\n";
			if($length > $palindrome_arr[0]){
				$palindrome_arr[0] = $length;
				$palindrome_arr[1] = $combin;
			}
		}
	}
}

print "$palindrome_arr[1]";
