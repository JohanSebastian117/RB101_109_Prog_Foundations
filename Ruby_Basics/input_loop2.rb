




choice = nil

loop do
	puts "How many output lines do you want? Enter a number >= 3:"
	choice = gets.chomp.to_i
	if choice <= 3
	puts '>> invalid! Please enter a bigger number'
	else
	puts "Launch School is the best! " * choice 
	end
end












