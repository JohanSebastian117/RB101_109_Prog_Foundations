=begin

Write a method that takes a string with one or more space separated words 
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.


P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

Algo 
	- INPUT will be a STRING
		- Need to run a BLOCK seperate each STRING into words
		- STRING is seperated into letters. Each word an ARRAY made up of its letters.
			- Count the words, make a Hash of the words
				- Key = Word size, Value = How many iterations of this word size
					- 

=end

def word_sizes(words)
	words = words.gsub(/[^a-zA-Z\s]/,'')
	words = words.split.each_with_object({}) do |word, hash|
		hash[word.size] = 1 + hash[word.size].to_i
	end
end



#Letter counter 1

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

#Letter counter 2


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

