def triangle(num)
	space = num - 1
	stars = 1

	num.times do |num|
		puts (' ' * space) + ('*' * stars)
		stars += 1
		space -= 1
	end

end

triangle(9)

