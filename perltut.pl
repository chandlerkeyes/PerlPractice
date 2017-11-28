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

#Comparing Strings
my $string1 = "Hi";
my $string2 = "Bye";
$string2 = "Hi";
if($string1 eq $string2) {
say "true";
}
else {
say "false";
}

#For loops
my $i;
for($i = 0; $i < 10; $i++) {
say $i;
}

#do while loop and getting userinput
my $lucky_num = 3;
my $guess;

do {
   say "Guess my lucky number";
   $guess = <STDIN>;
} while $guess != $lucky_num; 

#Printing the index of a character
my $word = "Hello";
printf("e is at index %d \n", index $word, "e");

#concatenating Strings
my $testString = "Hello";
$testString = $testString . " World";

say $testString;

#Using the Substring method!
my $newString = substr $testString, 1, 10;
say $newString;

#Printing last character of a string! chop method
my $lastChar = chop $testString;
say $lastChar;

#Replacing characters with other characters
$testString =~ s/ /./g;
say $testString;

#Declaring, Initializing, and Printing an array
my @array1 = ('a','b','c','d');
say @array1;

#Printing the array in an organize way
#Let's seperate it with commas
say join(", ", @array1);

#Changing / Manipulating data in an element of an Array
my @weirdArray = ("Chandler", 'T',"Keyes", "8444 Jack Pine Dr.", 18, 1999);
say join(" ", @weirdArray);
@weirdArray[3] = "Don't show address";
say join(" ", @weirdArray);

#Looping through an array - printing each individual element
for my $info (@weirdArray) {
say $info;
}

#Foreach loop with array
my $incrementer = 0;
foreach my $info2 (@weirdArray) {
++$incrementer;
say "Element ", $incrementer, ": ", $info2;
}

#Looping through array w/o declaring a variable
for(@weirdArray) {
say $_;
}

#Different array using another arrays elements
my @name = @weirdArray[0,1,2];
say join(" ", @name);

#Find the length of an array
my $numberOfElements = scalar @weirdArray;
say $numberOfElements;

#Removing values of an array - using the Splice method
#This will remove everything after indexes 0 - 2.
say "Removed elements 0-2", splice @weirdArray, 0, 3;

#Turning a String of words into an array!
my $stringOfWords = "I am a String of Words!";
my @wordArray = split / /, $stringOfWords;

say join(" ", @wordArray);