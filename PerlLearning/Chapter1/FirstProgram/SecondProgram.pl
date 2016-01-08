#!perl

@lines = `perldoc -u -f atan2`;
foreach (@lines) {
	s/\w<([^>]+)>/\U$1/g; #for the dumb - \U refers to 'uppercasing' everything that follows it.  \w refers to 
	print;
}