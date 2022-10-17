def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

#main loop

loop do 
integer = 0
	loop do
		prompt 'Please enter an integer greater than 0:'
		integer = gets.chomp

		if valid_number?(integer)
			break
		else
			prompt 'Hmm.. not a valid number'
		end
	end

	loop do
		prompt 'Enter "s" to computer the sum, "p" to compute the product'
		sum_or_pro = gets.chomp

		sum = 0

		if sum_or_pro == 's'
			sum = (0..integer.to_i).sum
			prompt "The sum of #{integer} is #{sum}"
			break
		elsif sum_or_pro == 'p'
			product = (1..integer.to_i).inject(:*)
			prompt "The product of #{integer} is #{product}"
			break
		end
		
	end

	prompt 'Another calculation? = [y] [n]'
	answer = gets.chomp

	break unless answer.downcase.start_with? 'y'
end
