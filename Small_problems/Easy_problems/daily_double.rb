=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string 
with all consecutive duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.

P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

- Problem:
	Contains original value = Assume it means the semantic value. 
	Consecutive characthers collapsed into a single character.
	Do not use String#squeeze or String#squeeze!

- Algo
	1. Take STRING
	2. 

=end



def crunch(string)
end



p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba') 
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
