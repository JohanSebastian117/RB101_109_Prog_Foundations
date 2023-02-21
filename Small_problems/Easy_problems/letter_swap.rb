=begin
Given a string of words separated by spaces, 
write a method that takes this string of words and returns a string 
in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter,
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces/


swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

Algo - 
	- We will take the STRING and seperate each word with the #split function
	- We will take these words and change the first and last letter 
		- A loop might work here
	- We will take this ARRAY of words and #join them with then #join function into a string
	- We will post this STRING as the result

=end

def swap(string)
	string = string.split
	string.map { |word| word.chars.rotate.join }.join(" ")

end



p swap('Oh what a wonderful day it is')






