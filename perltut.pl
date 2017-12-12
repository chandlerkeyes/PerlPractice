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

#Reversing an array
@wordArray = reverse @wordArray;
say join(" ", @wordArray);

#Sorting an array
@wordArray = sort @wordArray;
say join(" ", @wordArray);

#Declaring and initializing a HashMap
my %employees = ("Sue"=> 35,
		 "Paul"=>42,
	 	 "Carl"=>22,
		 "Bob"=>33);
#We use the $ sign to call bob because Bob is an individual variable
printf("Bob is %d \n", $employees{Bob});

#Printing both key and values from a hash map with a loop
while(my ($k, $v) = each %employees) {
say $k, " is ", $v;
}

#Deleting key and value from HashMap
say "NEW LINE";
delete $employees{Sue};
while(my ($k, $v) = each %employees) {
say $k, " is ", $v;
}

#Creating and calling a method(sub) - Generating a random number
sub randomNum {
return int(rand(100));
}
say "Random number between 0 and 99: ", randomNum();

#Methods(sub) that accept arguements
sub getRandom {
my ($max) = @_;
$max ||= 100;
return int(rand($max));
}
say "Random number between 0 and 10: ", getRandom(11);

#Taking in multiple values (parameters) in a subroutine

sub manyNums {
my($num1, $num2) = @_;
$num1 ||= 1;
$num2 ||= 1;

my $addedNums = $num1 + $num2;

return $addedNums;
}
say "Added numbers = ", manyNums(2,10);

#Subroutine that takes input and puts into array
sub myArray {
my @enteredArray = @_;
#Lets double the values of the array! 
$_*= 2 for @enteredArray;
return @enteredArray;
}
say "Here's a doubled array: ", join(" ", myArray(1,2,3,4,5));

#Getting the length of a HashMap (Number of pairs)
my %hash_map = ('Chandler',1999,'Bob',1980,'Sue', 1972);
my $hash_size = keys %hash_map;
say "Number of pairs in my HashMap is: ", $hash_size;

#Pulling specific data from hash
my @ages_from_hash = @hash_map{'Chandler', 'Bob'};
say "Chandler and Bob was born in ", join(" and ", @ages_from_hash);

#Assigning multiple values to an array(PRACTICE)
my @new_array = 'Chandler', 12, 1980;
my($name, $date, $year) = @new_array;
say $name;


