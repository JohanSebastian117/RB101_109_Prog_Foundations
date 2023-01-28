#Question 1 --------------------------------------------------------------

10.times {|number| puts (" " * number) + "The Flinstones Rock!"}


#Question 2 --------------------------------------------------------------

puts "the value of 40 + 2 is " + (40 + 2)
# No inversion of integer to string



puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

#Question 3 --------------------------------------------------------------

#Way to refactor better

def factors(number)
	(1..number).select {|n| number % n == 0}
end

#Question 5 --------------------------------------------------------------

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


#Question 6 --------------------------------------------------------------

#The result is 34. The "answer value" minus 8
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#Question 7 --------------------------------------------------------------
#the method completely changes the age, adding 42 years, and changing all genders to "other"

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

#Question 8 --------------------------------------------------------------

# This returns paper
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#Question 9 --------------------------------------------------------------


def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)
