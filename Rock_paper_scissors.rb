VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

prompt_choices = "
	r = rock
	p = paper
	sc = scissors
	l = lizard
	sp = spock"

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  win_conditions = {
    'r' => ['scissors', 'lizard'],
    'p' => ['rock', 'spock'],
    'sc' => ['paper', 'lizard'],
    'sp' => ['scissors', 'rock'],
    'l' => ['paper', 'spock']
  }
  win_conditions[first].include?(VALID_CHOICES[second])
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def display_grand_winner(player_wins, _)
  if player_wins == 3
    prompt("You are the grand winner!")
  else
    prompt("Computer is the grand winner!")
  end
end

# Main loop
loop do
	player_total = 0
	computer_total = 0
	loop do
		choice = ''
		loop do
			prompt("Choose one: #{prompt_choices}")
			choice = gets.chomp.downcase

			if VALID_CHOICES.include?(choice)
				break
			else
				prompt("That's not a valid choice.")
			end
		end

		computer_choice = VALID_CHOICES.keys.sample

		prompt("You chose: #{VALID_CHOICES[choice]}")
		prompt("Computer chose: #{VALID_CHOICES[computer_choice]}")

		display_result(choice, computer_choice)

		if win?(choice, computer_choice)
      player_total += 1
    elsif win?(computer_choice,choice)
      computer_total += 1
    else
      player_total += 0 && computer_total += 0
    end

		prompt("Your total: #{player_total}. Computer total: #{computer_total}.")

    break if player_total == 3 || computer_total == 3
  end
	
	display_grand_winner(player_total, computer_total)
	prompt('Do you want to play again?')
		answer = gets.chomp
		break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Good bye!')
