=begin
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.

=end

#Integer to String #to_s
#Chars will make the string to array #chars
#Numeric strings are turned to Integers // #map iterates through the array and turns the String to Integers

def digit_list(numbers)
	numbers = numbers.to_s.chars.map(&:to_i)
	p numbers
end
 


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


