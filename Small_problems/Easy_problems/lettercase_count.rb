=begin
Write a method that takes a string, and then returns a hash that contains 3 entries:
 	one represents the number of characters in the string that are lowercase letters, 
 	one the number of characters that are uppercase letters, 
	one the number of characters that are neither.

	Input is string
	Output a 3 part hash

	Need to make a new hash and insert the three values
		Lowercase, Uppercase, characthers that are neither

		FIRST: We make an empty hash called counts ={}
					We will add our parameters there (lowcase/upcase/neither)

		SECOND: We make a value called characthers, in which we will run string#chars
						Characters will be an array of the string characters now

		THIRD: We add our parameter values to counts {}, this value is made up by the characthers array. 
							We take the characthers value and use the #count method, we run a block
								THIS BLOCK IS HOW OUR PARAMATER IS CHOSEN (lowcase/upcase/neither)
						example: counts[:lowercase] = characters.count {|char| char =~ /[a-z]/}

=end

def letter_case_count(string)
	counts = {}
	characters = string.chars

	counts[:lowercase] = characters.count {|char| char =~ /[a-z]/}
	counts[:uppercase] = characters.count {|char| char =~ /[A-Z]/}
	counts[:neither] = characters.count {|char| char =~ /[^A-Za-z]/}
	counts
end




p letter_case_count('abCdef 123')
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
