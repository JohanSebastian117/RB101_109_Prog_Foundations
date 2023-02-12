# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_zero_to_1439(minutes)
	while minutes < 0
		minutes += MINUTES_PER_DAY
	end

	minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
	delta_minutes = normalize_minutes_zero_to_1439(delta_minutes)
	hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
	format('%02d:%02d', hours, minutes)
end

p 1437.divmod(MINUTES_PER_HOUR)



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"





=begin
Given an integer representing minutes before or after midnight
P----Problem
- explicit requirements
	- input: Integer
	- output: Integer
	- one day is 1440 minutes

E-- Examples

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

D--- Data structure

	- Acquire Integer input represanting time
	- run that input in some method in which the value of an entire day (1440 minutes) is present
	- Using arithmetic with 1440 as our constant we can substract/add to find the military time
	- remember about constants
	- Output should be an integer 

Here the delta minutes are d
			hours, minutes = 35.divmod(60)
			p format('%02d:%02d', hours, minutes)

=end

