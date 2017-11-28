use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

#declaring and printing a variable
my $p = "hello\n";
print $p;

#initializing multiple variables at once and printing in the same print statement
my($name, $age, $year) = ('Chandler', 18, 1999);
print "Hi, my name is ", $name, " and I am ", $age, " years old. I was born in ", $year, "\n";

#Writing and printing multiple lines of text
my $info = <<"TEST";
My name is
Chandler
and I work at
HelloWorld
TEST
say $info;
#say appends a new line, print doesn't

#Math Functions with Perl
say "5 + 4 = ", 5 + 4;

#How to use exponents: _ to the power of _
say "5 to the power of 4 equals ", 5 ** 4;

#Generate a Random Number between 10 and 100
my $randNum = int(rand(91)) + 10;
print $randNum, "\n";

#If statements
if($randNum > 50) {
say "Greater than 50";
}
else {
say "Less than 50";
}