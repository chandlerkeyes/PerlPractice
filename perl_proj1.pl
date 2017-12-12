#PerlProject
use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';
use feature 'fc';
use Scalar::Util qw(looks_like_number);

my $yes_or_no;
do {
say "Enter a number between 1-100";
my $user_input = <STDIN>;

#This checks if the user input is an integer between 1 and 100, else it will execute the rest of the program

if((!looks_like_number($user_input)) || ($user_input < 1) || ($user_input > 100) || !($user_input =~ /^\d+$/)) {
    say "Not a whole number between 1-100";
}
else {
  if($user_input % 2 == 0){
    say "You entered an even number";
  }
  else{
    say "You entered an odd number";
  }
}
say "Do you want to continue? (Y/N)";
$yes_or_no = <STDIN>;
} while($yes_or_no eq 'y');