#!perl

use 5.012;

my @numList = (1..1000);
my $total = &total(@numList);

print "The total of 1 - 1000 is $total\n";

sub total {
	my @array = @_;
	my $sum;
	foreach (0..$#array) {
		$sum += $array[$_];
	}
	return $sum;
}

