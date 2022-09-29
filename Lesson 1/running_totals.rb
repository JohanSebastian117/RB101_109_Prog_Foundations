=begin
take Array1 input
return Array2 with same number of elements
each new element in Array2 has the running total from Array1

=end


def running_total(array1)
	sum = 0
  array2 = array1.map do |number|
    sum += number
  end
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([]) 
