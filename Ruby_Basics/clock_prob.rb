def angle_clock(hour, minutes)

if hour < 0 or minutes < 0
	return "Please use a positive number."
end

minuteAngle = minutes * 6

	if hour != 12
		hourAngle = hour * 30 + minutes * 0.5
	else 
		hourAngle = minutes * 0.5
	end

	angle = [(hourAngle - minuteAngle).abs , 360 - (hourAngle - minuteAngle).abs ]

	return angle.min
end

puts angle_clock(12, 00)





=begin

From 12 --> 1
hour increased 30 deg
minute increased 360 deg

every minute, minute inceases by 6 degrees
every minute, hour hand increases by 1/2 degrees


=end