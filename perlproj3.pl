#PerlProject3
#Reverse a string

use strict;
use warnings;
use feature 'say';

#prompting the user to enter a string
say "Enter a string";
my $user_input = <STDIN>;

#declaring an array and setting it equal to the characters in user_input... converting user_input into an array
my @char_array = split //, $user_input;

#getting the size of the array
my $size = @char_array - 1;

#printing the string in reverse
for(my $i = $size-1; $i >= 0; $i--) {
  print @char_array[$i];
}


