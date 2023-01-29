def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end


loop do

	number1 = 0
		loop do
			prompt 'Enter the 1st number'
			number1 = gets.chomp

			if valid_number?(number1)
				break
			else
				prompt 'Hmm.. not a valid number'
			end
		end

	number2 = 0
		loop do
			prompt 'Enter the 2nd number'
			number2 = gets.chomp

			if valid_number?(number2)
				break
			else
				prompt 'Hmm.. not a valid number'
			end
		end

	number3 = 0
		loop do
			prompt 'Enter the 3rd number'
			number3 = gets.chomp

			if valid_number?(number3)
				break
			else
				prompt 'Hmm.. not a valid number'
			end
		end

	number4 = 0
		loop do
			prompt 'Enter the 4th number'
			number4 = gets.chomp

			if valid_number?(number4)
				break
			else
				prompt 'Hmm.. not a valid number'
			end
		end

		number5 = 0
		loop do
			prompt 'Enter the 5th number'
			number5 = gets.chomp

			if valid_number?(number5)
				break
			else
				prompt 'Hmm.. not a valid number'
			end
		end

		number6 = 0
		loop do
			prompt 'Enter the 6th number'
			number6 = gets.chomp

			if valid_number?(number6)
				break
			else
				prompt 'Hmm.. not a valid number'
			end
		end

		array1 = [number1, number2, number3, number4, number5]
		loop do
			
			if array1.include? number6
				puts "The number #{number6} appears in #{[array1]}."
				break
			else
				puts "The number #{number6} does not appear in #{[array1]}."
				break
			end

		end

  prompt 'Another calculation? = [y] [n]'
  answer = gets.chomp

  break unless answer.downcase.start_with? 'y'
end
