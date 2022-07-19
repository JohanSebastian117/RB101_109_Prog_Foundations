#clock prob

def angle_clock(hour, minutes)

	if hour < 0 or minutes < 0
		return "Wrong input, no negative numbers"
	end

	minuteAngle = minutes * 6

	if hour != 12
		hourAngle = hour * 30 + minutes * 0.5
	else
		hourAngle = minutes * 0.5
	end

	angle = [(hourAngle - minuteAngle).abs, 360 - (hourAngle-minuteAngle).abs]

	return angle.min

end

puts angle_clock(12, 00)


#clock prob 2

def angle_clock(hour, minutes)
	# Angles for hour, minute.
	# Hour moves 0.5deg/min.
	hour_angle = (360/12) * hour + (minutes*0.5)
	minute_angle = (360/60) * minutes
	
	# Calculate, absolute value.
	angle = (hour_angle - minute_angle).abs
	
	# Minimum of angle, 360 - angle.
	[angle, 360-angle].min
end
