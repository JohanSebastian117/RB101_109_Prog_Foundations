puts '==> What is the bill?'
bill = gets.to_f

puts '==> What is the tip percentage?'
tip_percent = gets.to_f / 100

tip_total = (bill * tip_percent)
bill_total = (bill + tip_total)

puts "The tip is $#{tip_total}"
puts "The total is $#{bill_total}"