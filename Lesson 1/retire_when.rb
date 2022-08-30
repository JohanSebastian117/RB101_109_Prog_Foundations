def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

loop do

	age = 0

	loop do
		puts "==> What is your age?"
		age = gets.chomp

		if valid_number?(age)
      break
    else
      puts 'Hmm.. not a valid number'
    end
	end

	retire = 0

	loop do
		puts "==> At what age would you like to retire?"
		retire = gets.chomp

		if valid_number?(retire)
      break
    else
      puts 'Hmm.. not a valid number'
    end
	end
	

	retire_age = retire.to_i - age.to_i
	retire_year = Time.now.year + retire_age.to_i

	puts "==> Its #{Time.now.year}. You will retire in #{retire_year}."

	puts "==> You only have #{retire_age} years to go!"

	puts ""==> Another calculation? = [y] [n]"
  answer = gets.chomp

  break unless answer.downcase.start_with? 'y'
end 


