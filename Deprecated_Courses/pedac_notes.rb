=begin
------------------WHAT IS PEDAC?-----------------------
P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

	P: Understanding the Problem
		- Read the problem 
		- Check the test cases, if any.
		- If any part is ambiguous. Ask.
		SPEND TIME ON THIS 
		- Write inputs/ouputs. Describe explicit and then implicit rules.


	E: Examples and test cases
		- Can confirm/ refute assumptions 
		- Help to answer questions about implicit requirements 
		- Checked/given/asked in first step  (Should be called PDAS lol)

	D: Data Structures
		- Help reason with data logically
		- Help interact with data at implementation level
		- Part of problem solving process to think in terms of data structure
		- Data structures closely linked to algorithm
			- Set of steps from input to output
				- Involves structuring data in a certain way



	A: Algorithms
		- Logical sequence of steps for accomplishing a task or objective
			- Closely linked to data strcutureres
			- Series of steps to structure data to produce the required output
		- Stay abstract/ high-level
			- Avoid implementing detail
			- Dont worry about efficiency for now


	C: Implementing a solution in Code
		- Translating our solution to code
		- Think about the algorithm in context of programming language
			- Language, features, constraints
			- Characthertitcs of datae strcutres
			- Built in functions/methods
			- Syntax and coding patterns
		- Create test cases if necessary
		- Code with intent

=end



=begin




------------------**GENERAL EXAMPLE**-----------------------


Given a string, produce a new string with every other word removed
- Explicit requirements
	- input: string
	- output: new string
	- Remove every other word from input string
	
- Questions:
	- What do we mean by every other word?
	- How do we define a word in this context?
		- Words are delimited by spaces








------------------**SUM EVEN NUMBER ROWS**-----------------------








	Imagine a sequence of consecutive even integers beginning with 2. The integers
are grouped in rows, with the first row containing one integer, the second row
two integers, the third row three integers and so on. Given an integer representing
the number of a particular row, return an integer representing the sum of all the 
integers in that row.

									###P
									**Rules and Requirements***


- Sequence of even integers
- Sequence begins with two
- Integers are consecutive
- Sequence is grouped into rows
- Each row incrementally larger: 1, 2, 3, ...
- Row 'number' equals the number of elements in the row
		- Row 1 has 1 element, row 2 has two elements, ...
- Input: a single integer.
		- Identifies a 'row' which is a subset of a sequence of integers
- Output: a single integer
		- The sum of the integers in the row indentified by the input integer
	
- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
....

- How do we create the structure?

							###E
							***EXAMPLES***


row number 1 --> sum of integers in row: 2
row number 2 --> sum of integers in row: 10
row number 4 --> sum of integers in row: 68

2 --> 2
4, 6 --> 10
14, 16, 18, 20 --> 68

								##D
								***DATA STRUCTURE***

2
4, 6
8, 10, 12
14, 16, 18, 20
....

- Overrall structure representing sequence as a whole
- Individual rows within overall structure
- Individual rows in a set order in contet of sequence
- Individual rows contaion integers
- Can assume that integers are in a set order in the context of sequence

[
	[2],
	[4, 6],
	[8, 10, 12],
	[14, 16, 18, 20],
	...
]

calculate the start integer:
rule: first integer of front row is equal to the last integer of preceding row + 2
algorithm:
	- get the last row of the rows array
	- get last integer of that row
	- add 2 to integer
	







					***ALGORITHM***

1. Create an empty 'rows' array to contain all of the 'rows'
2. Create first 'row' array add it to the overall 'rows' array
3. Repeat step 2 until all necesessary rows have been created
	- All rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row 
5. Return the sum

**Problem: create a row** (seperating steps to solve them is encouraged)

Rules: 
	- Row is an array
	- Array contains integers
	- Integers are consecutive even numbers
	- Integers in each row form part of an overall larger sequence
	- Rows are of different lengths
	- Input: The information needed to create output
		- the starting integer
		- length of the row
	- Output: The row itself: [8, 10, 12]

Examples: 
Start: 2, length 1 --> [2]
Start: 4, length 2 --> [4,6]
Start: 8, length 3 --> [8, 10, 12]

Data Structure

- An array of integers

- ALGORITHM:
	1. Create an empty 'row' array to contain the integers
	2. Add the starting integers
	3. Increment the starting integer by 2 to get the next integer
	4. Repeat steps 2 & 3 until the array has reached the correct length
	5. Return the 'row' array

	####### Final thoughts 

	- Not a completely linear process
	- be prepared to move back and forth between steps
	- switch from praxis to abstract problem solving
	- dont problem solve at the code level


[steps 2-4]
	-Start the loop
		- Add the start integer to the row
		- Increment the start integer by 2
		- Break the loop if length of row equals row_length




--------------------SUM EVEN NUMBER ROWS CODE-----------------------
=end

def sum_even_number_row(row_number)
	rows = []
	start_integer = 2
	(1..row_number).each do |current_row_number|
		rows << create_row(start_integer, current_row_number)
		start_integer = rows.last.last + 2
	end
	rows.last.sum
end




def create_row(start_integer, row_length)
	row = []
	current_integer = start_integer
	loop do
		row << current_integer
		current_integer += 2
		break if row.length == row_length
	end
	row
end

# row number 1 --> sum of integers in row: 2
# row number 2 --> sum of integers in row: 10
# row number 4 --> sum of integers in row: 68

p sum_even_number_row(1) == 2
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68

# Start: 2, length 1 --> [2]
# Start: 4, length 2 --> [4,6]
# Start: 8, length 3 --> [8, 10, 12]

#  p create_row(2, 1) == [2]
#  p create_row(4, 2) == [4, 6]
#  p create_row(8, 3) == [8, 10, 12]
















=begin
------------------PALINDROME TEST CASE-----------------------
 PROBLEM:

Given a string, write a method `palindrome_substrings` which returns
 all the substrings from a given string which are palindromes. Consider
 palindrome words case sensitive.

 Test cases:

 palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
 palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
 palindrome_substrings("palindrome") == []
 palindrome_substrings("") == []

------------------PEDAC TIME------------------------
Input: String
Output: Array of substrings[diferent than input]

Rules: 
			-Explicit Reqs
				- From string, return substring palindromes
				- Palindromes are case sensitive
				- case sensitive
			-Implicit Reqs
				- Multiple palindromes in word must appear
				- If input is nil so is the return
				- if no palindrome, return blank

# input: a string
# output: an array of substrings
# rules: palindrome words should be case sensitive, meaning "abBA"
#        is not a palindrome

# Algorithm:
#  palindrome_substrings method
#  ============================
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array
#
#  substrings method
#  =================
#    - create an empty array called `result` that will contain all required substrings
#    - create a `starting_index` variable (value `0`) for the starting index of a substring
#    - start a loop that iterates over `starting_index` from `0` to the length of the string minus 2
#      - create a `num_chars` variable (value `2`) for the length of a substring
#      - start an inner loop that iterates over `num_chars` from `2` to `string.length - starting_index`
#        - extract a substring of length `num_chars` from `string` starting at `starting_index`
#        - append the extracted substring to the `result` array
#        - increment the `num_chars` variable by `1`
#      - end the inner loop
#      - increment the `starting_index` variable by `1`
#    - end the outer loop
#    - return the `result` array

#  is_palindrome? method
#  =====================
# - Inside the `is_palindrome?` method, check whether the string
#   value is equal to its reversed value. You can use the
#   String#reverse method.


=end







=begin
#------------------PALINDROME CODE-----------------------

def palindrome_substrings(str)
	result = []
	substrings_arr = substrings(str)
	substrings_arr.each do |substring|
		result << substring if is_palindrome?(substring)
	end
	result
end

def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

def is_palindrome?(str)
  return str == str.reverse
end



p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []


=end



