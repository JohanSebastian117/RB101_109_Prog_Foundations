def reversed_number(num)
	p num.to_s.reverse.to_i
end

p reversed_number(12345) 
p reversed_number(12213) 
p reversed_number(456) 
p reversed_number(12000)
p reversed_number(12003) 


#It's fine if you used a loop to solve this yourself; 
# we haven't seen many solutions like this so far. 
# The key to this approach is to break the problem down into logical steps 
# that mirror the operations you can perform on the types used in your method.
#  With time, this will seem more natural than writing a loop.
