#!perl

use 5.012;

chomp(my @test = <>);

my $length = shift @test;

my @header = map {$_ % 10} 1.."$length";



my $format = "%20s\n" x @test;

print @header, "\n";

printf $format, @test;