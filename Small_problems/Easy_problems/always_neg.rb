def negative(num)

	if num > 0
		return -num
	elsif num < 0
		return num
	else return num
	end
	
end


p negative(5) 
p negative(-3)
p negative(0)   

#Better option

# def negative(number)
#   number > 0 ? -number : number
# end
