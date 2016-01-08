#!perl

print "\n", "Please enter 1 number and 1 string (on separate lines, and in that order) for me", "\n";

chomp($number = <STDIN>);

while($count < 3) {
	if ($number =~ m/^\d+([.]\d+)?$/g) {
		
		print "\n","Awesome, you've entered $number", "\n\n", "Please give me a string now", "\n";

		$count += 3;

	}
	else {
		print "\n", "$input's not a number in the format I recognize.  Please enter a number in the form of 1, 1.222, 3.7", "\n";

		chomp($number = <STDIN>);

		$count += 1;
	}
}

chomp($string = <STDIN>);

print "\n","Awesome, you've entered $string", "\n\n";

print "\n", "$string\n" x $number;