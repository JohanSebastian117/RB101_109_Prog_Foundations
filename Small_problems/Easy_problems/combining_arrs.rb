# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. 
# There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.
=begin
answer by launch school:

def merge(array_1, array_2)
  array_1 | array_2
end

=end



def merge(array1, array2)
	new_array = array1.concat(array2)
	new_array.uniq
end


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

p merge([1, 3, 5], [3, 6, 9]) 
