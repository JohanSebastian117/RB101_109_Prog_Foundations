=begin

Write a method that takes an Array of Integers between 0 and 19, 
and returns an Array of those Integers sorted based on the English words for each number:




P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

- Algo
		- INPUT = INTEGERS 0...19
		- OUTPUT = INTEGERS in alphabetical order

		The Value our method takes is [numbers]
			1. We create a Key called [base] in which INTEGERS as STRINGS correspond to their word counterparts
			2. Make a value[ordered] = This value iterates over [numbers], then fetches the [base], turning number to string
			3. Make a value[sorted_alpha] = Take the [ordered] value, iterate and take the key to a string, then to integer
			4. return the value [sorted_alphabetically]

=end




def alphabetic_number_sort(numbers)
	base = {"0": "zero", "1": "one", "2": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven",
	 "8": "eight", "9": "nine", "10": "ten", "11": "eleven", "12": "twelve", "13": "thirteen", "14": "fourteen",
	  "15": "fifteen", "16": "sixteen", "17": "seventeen", "18": "eighteen", "19": "nineteen"}

	ordered = numbers.map do |num|
		base.fetch(:"#{num.to_s}")
	end.sort

  sorted_alphabetically = ordered.map do |word|
    base.key(word).to_s.to_i
  end

  return sorted_alphabetically
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort((0..7).to_a)

#LAUNCH SCHOOL SOLUTION

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end
