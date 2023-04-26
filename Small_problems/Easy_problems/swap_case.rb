=begin
Write a method that takes a string as an argument and returns a new string 
in which every uppercase letter is replaced by its lowercase version, 
and every lowercase letter by its uppercase version. 
All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.


=end


#FIRST we make a value characters
	# String is run though #chars which returns every item seperately as an array
		# string is run through #map which runs a block = #map do |char|

#SECOND we run and if statement
	# if char is downcase =~ its made upcase
		# if char is upcase its made downcase
			# else left alone
#THIRD
	# #join the characthers since theyre arrays
	#done
#


def swapcase(string)
	characters = string.chars.map do |char|

		if char =~ /[a-z]/
			char.upcase
		elsif char =~ /[A-Z]/
			char.downcase
		else char
		end
	end
	characters.join

end


p swapcase('AbCd')
p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
