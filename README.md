Deduplicate a linked list
===

Problem
----

Start with a doubly-linked list of 200 nodes with random values between 1 and 100. Now remove any nodes as required, so that each value is only in the list no more than one time.

An example with values less than 10:

Input:

`8 <=> 4 <=> 2 <=> 4 <=> 9 <=> 4 <=> 8 <=> 8 <=> 0 <=> 3`

Output:

`8 <=> 4 <=> 2 <=> 9 <=> 0 <=> 3`

###Phase 1
Start by creating a nice OO linked list and use an array as an auxillary data structure to help deduplicate the list.
O(n) : n

###Phase 2
Remove duplicates from linked list without aux data structure.
O(n) : n^2
