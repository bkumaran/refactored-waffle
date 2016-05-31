


# In a sequence of alphabets (like aaabbddaabbcc) write a   program to find the number of the consecutive alphabets in and print the alphabet and number. example :if input is aaabbddaabbcc then output should be 3a, 2b, 2d, 2a, 2b, 2c 

my $string = "aaabbddaabbcc";
my @arr = split(//,$string);
my $flag = 1;
my @final_arr;
for(my $i=0;$i <= $#arr ; $i++){
	if($arr[$i] eq $arr[$i+1]){
		$flag++;
	}else{
		push @final_arr, ($flag . $arr[$i]);
		$flag = 1;	 
        }
}

print @final_arr;
