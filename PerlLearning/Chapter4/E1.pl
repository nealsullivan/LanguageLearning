#!perl

use 5.012;

my @numList = (1, 2, 3, 4);
my $total = &total(@numList);

my @fred = qw(1 3 5 7 9);
my $fred_total = &total(@fred);
print "The total of \@fred is $fred_total\n";
print "Enter some numbers on separate lines: ";
my $user_total = &total(<STDIN>);
print "the total of those numbers is $user_total.\n";

say "test total ".'&total(@fred) = '.&total(@fred);
say "test total ".'&total(@numList) = '." &total(@numList)";

sub total {
	my @array = @_;
	my $sum;
	foreach (0..$#array) {
		$sum += $array[$_];
	}
	return $sum;
}

