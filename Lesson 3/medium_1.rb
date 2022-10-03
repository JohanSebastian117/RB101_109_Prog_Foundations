=begin
Question 1 --------------------------------------------------------------

10.times {|number| puts (" " * number) + "The Flinstones Rock!"}


Question 2 --------------------------------------------------------------

puts "the value of 40 + 2 is " + (40 + 2)
# No inversion of integer to string



puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

Question 3 --------------------------------------------------------------

#Way to refactor better

def factors(number)
	(1..number).select {|n| number % n == 0}
end

Question 5 --------------------------------------------------------------
=end


