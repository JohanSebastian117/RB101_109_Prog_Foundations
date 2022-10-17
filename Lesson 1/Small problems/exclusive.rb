def xor?(num1, num2)
	if num1 == true && num2 == true
		puts false
	elsif
		num1 == false && num2 == false
		puts false
	else
		puts true
	end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)
