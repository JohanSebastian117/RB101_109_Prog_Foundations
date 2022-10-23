def palindromic(number) 
	
	num_reversed = number.to_s.reverse.to_i
	if num_reversed == number
		puts true
	else
		puts false
	end

end

puts palindromic(34543)
puts palindromic(123210)
puts palindromic(22)
puts palindromic(5)
