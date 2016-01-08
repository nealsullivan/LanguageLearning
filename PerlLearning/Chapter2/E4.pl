#!perl

print "\n", "Please enter 2 numbers (on separate lines) for me", "\n";

chomp($input = <STDIN>);

while ($count < 2 && defined($input)) {
	if ($input =~ m/^\d+([.]\d+)?$/g) {

		if ($count == 0 || ! defined($count)) {

			$count += 1;
		
			$numberOne = $input;

			print "\n", "Nice work.  You entered $numberOne, now give me one more number like that.", "\n";

			chomp($input = <STDIN>);

		}
		elsif ($count == 1) {

			$count += 1;

			$numberTwo = $input;

			$product = $numberOne * $numberTwo;

			print "\n", "Nice work.  You entered $numberOne and $numberTwo so far.", "\n", "$numberOne times $numberTwo is $product", "\n";

		}
		elsif ($count >= 2 || ! $input =~ m/^\d+([.]\d+)?$/g || ! defined($input)) {
			$count = 3;
		}	
	}
	elsif ($count < 3) {
		print "\n", "$input's not a number in the format I recognize.  Please enter a number in the form of 1, 1.222, 3.7", "\n";
	}
}