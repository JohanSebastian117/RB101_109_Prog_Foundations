=begin

Write a method that takes an Array as an argument, 
and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. 
If the original array contains an odd number of elements, 
the middle element should be placed in the first half Array.


P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code


Problem:

	Input: Array
	Output: Array

PSEUDO
	Split array in half with each_slice


	How can I deal with an empty Array?
		If array size == 0 have two empty arrays
	How can I deal with an array that has a single digit?

=end


def halvsies(array)
	if array.size == 0
		[[],[]]
	elsif array.size < 2
		array = [array, []]
	else
		array.each_slice( (array.size/2.0).round ).to_a
	end
end



p halvsies([1, 2, 3, 4])
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
