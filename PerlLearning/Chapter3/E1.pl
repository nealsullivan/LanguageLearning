#!perl

use 5.012;

my @list;

chomp(@list = <STDIN>);

@list = reverse @list;

foreach (@list) {
	print "$_\n";
}