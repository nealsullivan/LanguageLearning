#!perl

use 5.012;

my @numList = (1..10);
my $countList = @numList;
my $total = &total(@numList);
my $average = &average(@numList);
my @above_average = &above_average(@numList);

sub total {
	my @array = @_;
	my $sum;
	foreach (0..$#array) {
		$sum += $array[$_];
	}
	return $sum;
}

sub average {
	my @array = @_;
	
	my $total = &total(@array);
	my $count = @array;
	
	my $average = $total / $count;

	return $average;
}

sub above_average {
	my @array = @_;
	my @result;

	my $average = &average(@array);

	foreach (0..$#array) {
		if ($array[$_] > $average) {
			push (@result, $array[$_]);
		}
	}
	return @result;
}

sub list_some_shit {
	my @array = @_;
	my @result;

	my $average = &average(@array);

	foreach (0..$#array) {
		if ($array[$_] > $average) {
			print "$array[$_]\n";
		}
	}
}


# say "Test: the number of items in \@numList is $countList";
# say "\tAnd the sum of those numbers is $total";
# say "\tAnd the average of those numbers is $average";
# say &list_some_shit(@numList);
# say &above_average(@numList);

say "Given the list of numbers (@numList)";
say "the numbers that are above the average of $average are: ";
say "(@above_average)";