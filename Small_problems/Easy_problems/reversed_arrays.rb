=begin
Write a method that takes an Array as an argument, and reverses its elements in place;
that is, mutate the Array passed into this method. 
The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.


answer

We make an empty array value called rev

We treat the array like a stack and POP the array UNTIL empty 
We append the result to rev

we put rev at the end of the method

profit

or we can try:
	which is paralell assignment

    array[left_index], array[right_index] = array[right_index], array[left_index]

=end

# reversed array part 1


=begin

def reverse!(list)
	rev = []
  rev << list.pop until list.empty?
	list.replace(rev)
	list
end





p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
=end


#reversed array part 2
#Write a method that takes an Array, 
#and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

def reverse(list)
	rev = []
	list.reverse_each {|element| rev << element}
	rev
end
# We make an empty array
# We use reverse_each to iterate through the list, reverse_each processes the elements in reverse order. 
# each element will be appended to rev, the empty array
# We bring back the empty array 
# voila


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
