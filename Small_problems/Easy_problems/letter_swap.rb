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
1st Method - swap
	- We will take these words and change the first and last letter 
		- Take the string and have it go through = 
			- #split to seperate each characther into words
				- #map to set up a BLOCK with #chars (now each word is an array made up of seperated letters)
						-  place 2nd method here

2nd Method - swap_first_with_last
- We take the first and last index of a string and switch them
	- this method will be a component in the first method

						- end the block
							- take the word value, and #join it with a space between words
							- Voila!




	- We will take this ARRAY of words and #join them with then #join function into a string
	- We will post this STRING as the result

=end




def swap(word)
	word = word.split.map do |string| string.chars
		swap_first_with_last(string)
	end
	word.join(" ")
end




def swap_first_with_last(string)
	string[0], string[-1] = string[-1], string[0]
  string
end


p swap("hello we are testing")
p swap('Oh what a wonderful day it is')






