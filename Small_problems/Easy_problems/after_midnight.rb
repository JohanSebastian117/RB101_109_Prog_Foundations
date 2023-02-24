
#------------------------- Part 1

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_zero_to_1439(minutes)
# 	while minutes < 0
# 		minutes += MINUTES_PER_DAY
# 	end

# 	minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
# 	delta_minutes = normalize_minutes_zero_to_1439(delta_minutes)
# 	hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
# 	format('%02d:%02d', hours, minutes)
# end




# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"





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
			 format('%02d:%02d', hours, minutes)

=end



#--------------Part 2

# Write two methods that each take a time of day in 24 hour format,
# and return the time of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.



HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
	hours, minutes = time.split(":").map(&:to_i)
	(hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
	omega_time = MINUTES_PER_DAY - after_midnight(time)
	omega_time = 0 if omega_time == MINUTES_PER_DAY
	omega_time
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0






=begin

P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

------------ P


# Write two methods that each take a time of day in 24 hour format,
# and return the time of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

- input: We will be taking a string in time format 00:00
- output: An integer representing minutes before or after midnight
DRAFT OF ALGO
	- We make some constants to represent values of time
		- for AFTER MIDNIGHT we split the time string into hours and minutes, then make it into an integer
			- hours, minutes = time.split(":").map(&:to_i)
				- we make a FAILSAFE FOR 00:00/24:00 == (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
					- for BEFORE MIDNIGHT we take the output of AFTER MIDNIGHT and substract it from MINUTES PER DAY
						- FAILSAFE for 00:00/24:00 == delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
						END



-------------- E
	examples above


-------------- D


=end


