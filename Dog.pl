#PerlProject 4 part 2
#Inheritance : sub-class

Package Dog;

use strict;
use warnings;
use feature 'say';
use Animal;

my $object = Animal->new;

say $object->{noise};

