
#Given an array filled with 'n' random numbers, each number   may or may not be repeated again in the array, (mix of duplicates and unique numbers) shift all non-duplicates to the start of the array. for example, if array is {4,2,17,2,56,2,4} output should be {4,2,17,56...} the remaining part of array can be modified to anything, doesnt matter 

my @arr = (4,2,17,2,56,2,4);
my @final_arr1,@final_arr2;
my %hash;

foreach(@arr){
	if (!defined($hash{$_})){
		$hash{$_}++;
		push @final_arr1,$_;
	}else{
		$hash{$_}++;
		push @final_arr2,$_;
	}
}

my @final_arr =(@final_arr1,@final_arr2);
foreach(@final_arr){
	print $_."\t";
}
