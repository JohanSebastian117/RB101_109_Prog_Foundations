NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


def integer_to_string(number)
	string = ''
	loop do 
		number, remainder = number.divmod(10)
		string.prepend(NUMBERS[remainder])
		break if number == 0
	end
	string
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(50) == '50'
