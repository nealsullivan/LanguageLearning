#!perl

use 5.012;

say "Please give me a list of names";

chomp (my @entries = <>);

@entries = sort @entries;

say "All on one line version:";
say "@entries\t";

say "Now on separate lines:";

foreach (@entries) {
	say "$_";
}