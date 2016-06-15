use strict;
my @arr = ( 11,2,0,3,9,2,5,7,5,0);
my $buy_date=0;
my $sell_date=0;
my $buy_value=$arr[0];
my $sell_value=$arr[1];
my $profit = $sell_value - $buy_value;
for(my $i=0; $i <= $#arr;$i++){
        for(my $j=$i+1;$j<= $#arr;$j++){
                if($arr[$j] - $arr[$i] > $profit){
                        $buy_date = $i;
                        $sell_date = $j;
                        $buy_value=$arr[$i];
                        $sell_value=$arr[$j];
                        $profit = $arr[$j] - $arr[$i];
                }
        }
}
print "$buy_value ----- $sell_value  \n\n";
