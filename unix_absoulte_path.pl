use strict;
my $relative_path = '/home/abc/.././def/./ghi/../.';
my @arr = split(/\//,$relative_path);
my @final_arr;

foreach(@arr){
	if($_ eq ".."){
		pop(@final_arr);
	}elsif ($_ eq "."){
		#do nothing
	}else{
		push @final_arr,$_;
	}
}

my $absolute_path = join ("/",@final_arr);
print $absolute_path."\n";
