def valid_number?(number_string)
	number_string.to_i.to_s == number_string
end

numerator = nil

loop do 
	puts '>> Please enter the numerator'
	numerator = gets.chomp

	break if valid_number?(numerator)
	puts '>> Invalid input'
end


denominator = nil
loop do
	puts '>> enter the denominator'
	denominator = gets.chomp

if denominator == '0'
	puts '>> Invalid input, denominator cannot be 0'
else
	break if valid_number?(denominator)
	puts '>> invalid input. Only integers allowed'
end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"
	
	
