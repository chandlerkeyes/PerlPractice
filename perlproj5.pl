
#Project5 Palindrome

use strict;
use warnings;
use feature 'say';

#EASY WAY

# 1. Prompt user to enter a word, then chomp the user's input to remove new line.
say "Enter a word";
my $user_input = <STDIN>;
chomp($user_input);

# 2. Check if the user's input equals the input in reverse (using the reverse method)
if($user_input eq reverse($user_input)) {
  say "Palindrome!";
}
else {
  say "Not a palindrome!";
}

#HARD WAY

# 1. Prompt user to enter a word, then chomp the user's input to remove new line.
say "Enter another word";
my $user_input2 = <STDIN>;
chomp($user_input2);

# 2. Convert the user's input into an array of character.
my @char_array = split //, $user_input2;

# 3. Get the length of the array
my $array_size = @char_array;

# 4. Declare a new array, and start placing each element into that array, starting from the highest element, to the lowest.
# this will place the reversed user's input into the array

my @new_array;
my $j = 0;
for(my $i = $array_size - 1; $i >= 0; $i--) {
  $new_array[$j] = $char_array[$i];
  $j++;
}

# 5. Place the reversed array into a string scalar
my $reverse_string = join("", @new_array);

# 6. For testing purposes, pring the reversed string.
say $reverse_string;

# 7. Check if the reverse string is equal to the user's original input... don't forget CHOMP! 
if($reverse_string eq $user_input2) {
  say "Palindrome!";
}
else {
  say "Not a palindrome!";
}
