#made a new array, this array takes array1 and uses #zip which adds both arrays together
# we next use #flatten With no argument, flattens all levels:

def interleave(array1, array2)
	new_array = array1.zip(array2).flatten
end





p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
