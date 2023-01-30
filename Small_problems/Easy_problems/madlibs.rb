def prompt(message)
  puts("=> #{message}")
end

prompt "Enter a noun"
noun = gets.chomp

prompt "Enter a verb"
verb = gets.chomp

prompt "Enter an adjective"
adjective = gets.chomp

prompt "Enter an adverb"
adverb = gets.chomp

p "Ok Soldier, There is a #{adjective} #{noun} about 3 kliks south, Reach the #{noun} and then #{verb} it, do it #{adverb.upcase}!"
