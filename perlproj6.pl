#Project6 - Splice

use strict;
use warnings;
use feature 'say';

my @array1 = ('pink','yellow','red','blue','green');
say join(" ", @array1);

#This will add elements to the array and take up the following number of indexes, which will remove some elements
splice @array1, 3, 2, 'purple', 'white';
say join(" ", @array1);

#this will remove 1 element, starting at the index 0.
splice @array1, 0, 1;
say join(" ", @array1);


