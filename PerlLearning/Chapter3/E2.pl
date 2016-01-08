#!perl

use 5.012;

say "Please give me a list of numbers";

chomp (my @entries = <>);

my @names = qw(fred betty barney dino wilma pebbles bam-bam);

foreach (@entries) {
	say $names[$_];
}