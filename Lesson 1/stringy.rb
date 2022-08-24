def stringy(num)
	string = []
	num.times do |index|
		number = index.even? ? 1 : 0
		string << number
	end
	string.join
end


p stringy(6)
