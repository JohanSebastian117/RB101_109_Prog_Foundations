
Question 1 --------------------------------------------------------------
#greeting will be nil
if false
  greeting = "hello world"
end

greeting


Question 2 --------------------------------------------------------------


greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings #{:a=>"hi there"}

Question 3 --------------------------------------------------------------

# result will be = two, three, one
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"




Question 4 --------------------------------------------------------------


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
	return false unless dot_separated_words == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

p dot_separated_ip_address?("1.2.3.4")


