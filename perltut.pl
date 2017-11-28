use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

my $p = "hello\n";
print $p;

my($name, $age, $year) = ('Chandler', 18, 1999);
print "Hi, my name is ", $name, " and I am ", $age, " years old. I was born in ", $year, "\n";