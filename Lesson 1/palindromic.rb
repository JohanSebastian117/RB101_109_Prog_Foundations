def palindromic(string) 
	string = string.downcase.delete('^a-z0-9')
	string_reversed = string.reverse
	if string_reversed == string
		puts true
	else
		puts false
	end

end

puts palindromic("madam")
puts palindromic("Madam")
puts palindromic("Madam I'm Adam")
puts palindromic("356653")
puts palindromic("356a653")
puts palindromic("123ab321")



