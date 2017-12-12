#Allowing users to remove elements

use strict;
use warnings;
use feature 'say';
my $answer;

do{
say "Enter a word";
my $user_input = <STDIN>;

say "Enter the index you would like to remove";
my $remove_index = <STDIN>;
my @char_array = split//, $user_input;

splice @char_array, $remove_index, 1;

say join("", @char_array);

say "Continue? (Y or N)";
$answer = <>;
chomp($answer);
} while(uc($answer) eq "Y");
