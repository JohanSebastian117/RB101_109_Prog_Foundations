=begin

input:string

output:number

Rules:
			Explicit:
			- Takes string, returns appropriate number as integer
			- Do not use traditional methods (string#to_i // integer())
			- Assume all characthers are numeric 
			
			Implicit:
			- The string will be a new object

Algorithm:
			-	Write a hash, key values being integers and their string counterpart
			- Make a variable [digits] for the numbers and place and build an array from seperated
				values of the numbers
			- make an empty "value" to fill with the previous variable
			- [digits] is iterated and the empty value is filled with:
				- an iteration in which value equals 10 times the value plus the iteration symbol

=end

NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
	digits = string.chars.map{|i| NUMBERS[i]}
	value = 0
	digits.each{|i| value = 10 * value + i}
	value 
end




p string_to_integer('4321')
p string_to_integer('570')



