
def multisum(number)
	(1..number).select do |n|
	 n % 3 == 0 || n % 5 == 0 
	end.sum
end


p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)
p multisum(20)
