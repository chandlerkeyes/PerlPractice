#Perl Project

use strict;
use warnings;
use feature 'say';

my @students = ('Bob','Ashley','Carol','Rachel','Jada','Moana','Lin','Connie');
my @student_age = (18, 22, 44, 38, 18, 22, 27, 47);
my @student_hometown = ('Detroit, Michigan', 'Sumpter, Michigan','Orlando,
 Florida','Hollywood, California','Fort Myers, Florida',
'Ypsilanti, Michigan','Hawaii','Phillipines');

say "Which student would you like to learn about? Enter 1 - 8";
my $student_choice = <STDIN>;

say "Student $student_choice is ", $students[$student_choice - 1]," What do you want to learn about ", $students[$student_choice - 1], "? Age or Hometown?";


