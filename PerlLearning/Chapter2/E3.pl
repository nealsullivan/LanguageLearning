#!perl

# NOTES
# 1. sprintf("%.2f", <someVariable>) is how we 'round' in perl
# 2. You need "use Math::Trig;" typed EXACTLY that way to use 'pi'
# NOTES

use Math::Trig;

print "\n", "Please enter a number in the form of 1, 1.222, 3.7", "\n";

chomp($radius = <STDIN>);

if ($radius =~ m/^-\d+([.]\d+)?$/g) {
	print "\n", "You entered a negative number bro.  The circumference is '0' now.", "\n"
} elsif ($radius =~ m/^\d+([.]\d+)?$/g) {

	$circumference = $radius * 2 * pi;

	$circumference = sprintf("%.2f", $circumference);

	print "\n", "The circumference of a circle with a radius: $radius is: $circumference", "\n";

} else {
	print "\n", "That's not a number in the format I recognize.  Please enter a number in the form of 1, 1.222, 3.7", "\n";
}