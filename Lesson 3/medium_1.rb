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

#limit is outside of the scope 

def fib(first_num, second_num)
	limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}" 


Question 6 --------------------------------------------------------------
=end

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
