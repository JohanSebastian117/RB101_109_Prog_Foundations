


def print_in_box(banner_text)
	horizon = "+#{'-' * (banner_text.size + 2)}+"
	empty = "|#{' ' * (banner_text.size + 2)}|"

	if banner_text.size < 80
		puts horizon
		puts empty
		puts "| #{banner_text} |"
		puts empty
		puts horizon
		puts "This text is #{banner_text.size} columns"
	elsif banner_text.size > 80
		puts "Your text has been truncated, its too large"
		puts horizon
		puts empty
		puts "| #{banner_text[0..69] } |"
		puts empty
		puts horizon
		puts "This text was #{banner_text.size} columns, was truncated to 69"
	end

end

print_in_box("Hello, How are we doing today, lets see how the count does with soemthing more than 80")

#slightly awkward but good practice, need to get back on this horse



