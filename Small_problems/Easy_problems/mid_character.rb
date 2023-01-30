
def center_of(string)
	if string.length.odd?
		return string[string.length / 2]
	elsif string.length.even?
		return string[string.length / 2 - 1] + string[string.length / 2]
	end
end

p center_of("qwertyuiopa")

#adding both the divison by two and the divison by two minus 1 was a bit tough
#keep in mind you fetch with []
#keep in mind strings can be divided like numbers
p center_of('I love ruby') 
p center_of('Launch School') 
p center_of('Launch') 
p center_of('Launchschool') 
p center_of('x') 
