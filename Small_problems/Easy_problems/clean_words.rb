# Given a string that consists of some words (all lowercased) 
# and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result 
# (the result should never have consecutive spaces).

=begin
P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

- We must run the STRING through a block to find the cases of non-alphabetic characthers
	- 


=end



def cleanup(string)
	string = string.gsub(/[^a-z]/i, ' ')
	string = string.gsub(/ +/, ' ')
end

# [^a-zA-Z0-9]
#a_string.gsub!(/ +/, ’ ')

p cleanup("---what's my +*& line?") #' what s my line '
p cleanup("[]378 H#ello p00al! ")
