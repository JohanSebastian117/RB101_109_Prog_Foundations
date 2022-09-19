def palindromic(string)
	string 
	string_reversed = string.reverse
	if string_reversed == string
		puts true
	else
		puts false
	end

end

puts palindromic("madam")
puts palindromic("Madam")
puts palindromic("madam i'm adam")
puts palindromic("356653")



