def uppercase?(string)
	if string == string.upcase
		puts true
	else
		puts false
	end
	
end




uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
