VALID_CHOICES = %w[rock paper scissors lizard spock]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
 (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock' ) ||
    (first == 'scissors' &&  second == 'paper') ||
		(first == 'lizard' && second == 'spock') ||
		(first == 'spock' && second == 'scissors') ||
		(first == 'scissors' && second == 'lizard') ||
		(first == 'lizard' && second == 'paper') ||
		(first == 'spock' && second == 'rock') ||
		(first == 'rock' && second == 'lizard') ||
		(first == 'paper' && second == 'spock')

end

def display_resuls (player, computer)
  if win?(player, computer)
		prompt("You won")
  elsif win?(computer, player)
		prompt("Computer won!")
	else
		prompt("It's a tie!")
	end
end

loop do
	choice = ''
	loop do
		prompt("Choose one: #{VALID_CHOICES.join(', ')}")
		choice = Kernel.gets.chomp

    if VALID_CHOICES.include?(choice)
			break
    else
    prompt("That's not a valid choice.")
    end
 end

 computer_choice = VALID_CHOICES.sample

 prompt("You chose: #{choice}, Computer chose: #{computer_choice}")

 display_resuls(choice, computer_choice)

 prompt('Do you want to play again?')
 answer = Kernel.gets.chomp
 break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye!')
