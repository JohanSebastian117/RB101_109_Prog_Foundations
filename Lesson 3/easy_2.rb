
Question 1 --------------------------------------------------------------

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.fetch("Spot"){|key| }

p ages.key?("Spot")

Question 2 --------------------------------------------------------------


munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase

Question 3 --------------------------------------------------------------


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge(additional_ages)

Question 4 --------------------------------------------------------------

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.match("Dino")

Question 5 --------------------------------------------------------------

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Question 6 --------------------------------------------------------------
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino")
p flintstones

Question 7 --------------------------------------------------------------

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino", "Hoppy")
p flintstones

Question 8 --------------------------------------------------------------


advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))
p advice

Question 9 --------------------------------------------------------------

statement = "The Flintstones Rock!"
p statement.count("t")

Question 10 --------------------------------------------------------------

title = "Flintstone Family Members"
p title.center(40)



