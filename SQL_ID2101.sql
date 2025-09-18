/*
Maximum of Two Numbers


Last Updated: August 2025

Medium
ID 2101


Given a single column of numbers, consider all possible permutations of two numbers with replacement, assuming that pairs of numbers (x,y) and (y,x) are two different permutations. Then, for each permutation, find the maximum of the two numbers.
Output three columns: the first number, the second number and the maximum of the two.
*/
select   d.number  , dd.number ,
    CASE WHEN d.number < dd.number then dd.number else d.number end AS max_number
from deloitte_numbers d 
CROSS JOIN deloitte_numbers dd ;