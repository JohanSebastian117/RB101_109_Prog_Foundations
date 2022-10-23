=begin

input:string

output:number

rules:
			Explicit:
			- Takes string, returns appropriate number as integer
			- Do not use traditional methods (string#to_i // integer())
			- Assume all characthers are numeric 
			
			Implicit:
			- The string will be a new object

=end

NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
	digits = string.chars.map {|char| NUMBERS[char]}
	value = 0
	digits.each{|i| value = 10 * value + i }
	value
end




p string_to_integer('4321')
p string_to_integer('570')



