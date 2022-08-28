def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def prompt(message)
  puts("=> #{message}")
end

loop do
	room_length = 0
	loop do
		prompt 'Enter the length of the room in meters:'
		room_length = gets.chomp

		if valid_number?(room_length)
			break
		else
			prompt 'Hmm.. not a valid number'
		end
	end

	room_width = 0
	loop do
		prompt 'Enter the width of the room in meters:'
		room_width = gets.chomp

		if valid_number?(room_width)
			break
		else
			prompt 'Hmm.. not a valid number'
		end
	end

	room_area = room_length.to_i * room_width.to_i
	room_area_feet = room_area * 10.7639

	prompt "The area of the room is #{room_area} square meters (#{room_area_feet})."

	prompt 'Another calculation? = [y] [n]'
  answer = gets.chomp

  break unless answer.downcase.start_with? 'y'
end

