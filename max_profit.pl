
my @arr = ( 1,2,1,3,9,2,5,7,5,11);
my $buy_date=0;
my $sell_date=0;
my $buy_value=$arr[0];
my $sell_value=$arr[0];

foreach(@arr){
   if($_ < $buy_value){
	$buy_value = $_;
   }
   if($_ > $sell_value){
	$sell_value = $_;
   }
}

print "$buy_value  ----- $sell_value";
