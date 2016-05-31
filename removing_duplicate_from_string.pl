my $string = "geeksforgeeks";
my @array = split(//,$string);
my %final;
my $unique="";
foreach(@array){
if(defined($final{$_})){
 $final{$_}++;
}else{
 $unique = $unique . $_;
 $final{$_}++;
}
}
print $unique;
