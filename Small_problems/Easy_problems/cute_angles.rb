=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees 
and returns a String that represents that angle in degrees,minutes and seconds. 
You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, 
and a double quote (") to represent seconds. 
A degree has 60 minutes, while a minute has 60 seconds.


P: Understanding the Problem
E: Examples and test cases
D: Data Structures
A: Algorithms
C: Implementing a solution in Code

P: Understanding
	- Minutes & Seconds = 
		A degree is 60 minutes
			One minute is 60m seconds
=end





DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
	total_seconds = (degrees_float * SECONDS_PER_DEGREE).round #Find the Total Seconds first. Take the Integer and times it by 120, then round it
	degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE) #find DEGREES and REMAING SECS, by doing total_seconds.Divmod(120)
	minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE) #find MINUTES and SECONDS by doing remaining_seconds.Divmod(60)
	p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)#FORMAT all answers. Use DEGREE for the degree symbol // 
end  #(%02'%02d") is used to format ' and "



dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

