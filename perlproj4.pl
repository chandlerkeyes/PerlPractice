#PerlProject4
#Inheritance : Parent class

package Animal;

use strict;
use warnings;
use feature 'say';

sub new {
  my $class = shift;
  my $self = {
	      noise => 'woof',
              food => 'meat',
              legs => 4,
             };
  return bless $self, $class;
}

#print "no errors \n";