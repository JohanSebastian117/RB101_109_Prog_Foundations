# ------------------More Methods-----------------------

#------------Enumerable#any?
#Returns whether any element meets a given criterion.


# p [1, 2, 3].any? do |num|
#   num > 2
# end
# # => true

# with a HASH the block requires two parameters in order to access the key and the value.

# { a: "ant", b: "bear", c: "cat" }.any? do |key, value|
# 	value.size > 4
# end
# # => false


#-------------Enumerable#all?
#Method only returns true if the block's return value in every iteration is truthy 

# [1, 2, 3].all? do |num|
#    num > 2
# end
# # => false

# on a hash


# { a: "ant", b: "bear", c: "cat" }.all? do |key, value|
#    value.length >= 3
# end
# # => true



#----------------Enumerable#each_with_index
# takes a second argument which represents the index of each element.

# [1, 2, 3].each_with_index do |num, index|
#   puts "The index of #{num} is #{index}."
# end

# # The index of 1 is 0.
# # The index of 2 is 1.
# # The index of 3 is 2.
# # => [1, 2, 3]


#on a hash, the first argument now represents an array containing both the key and the value.



# { a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
#   puts "The index of #{pair} is #{index}."
# end

# # The index of [:a, "ant"] is 0.
# # The index of [:b, "bear"] is 1.
# # The index of [:c, "cat"] is 2.
# # => { :a => "ant", :b => "bear", :c => "cat" }

#-------------Enumerable#each_with_object
#array is initialized to an empty array, []. Inside the block, we can now manipulate array. 
#In this case, we're just appending the current num into it if it's odd.

# [1, 2, 3].each_with_object([]) do |num, array|
#   array << num if num.odd?
# end
# # => [1, 3]

# on a hash


# { a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
#   array << pair.last
# end
# # => ["ant", "bear", "cat"]



#-------------Enumerable#first
# Takes an optional argument which represents the number of elements to return
# When no argument is given, it returns only the first element in the collection.


# [1, 2, 3].first
# # => 1

# on a hash


# { a: "ant", b: "bear", c: "cat" }.first(2)
# => [[:a, "ant"], [:b, "bear"]]
#first 2 elements returned


#-------------Enumerable#include?
#include? doesn't take a block, but it does require one argument.
# It returns true if the argument exists in the collection and false if it doesn't.

# [1, 2, 3].include?(1)
# # => true


#on a hash it checks Keys, not values

# { a: "ant", b: "bear", c: "cat" }.include?("ant")
# # => false

# { a: "ant", b: "bear", c: "cat" }.include?(:a)
# # => true


#-------------Enumerable#partition
# partition divides up elements in the current collection into two collections, 
# depending on the block's return value. 

# [1, 2, 3].partition do |num|
#   num.odd?
# end
# # => [[1, 3], [2]]

#Better way to write it

# odd, even = [1, 2, 3].partition do |num|
#   num.odd?
# end

# odd  # => [1, 3]
# even # => [2]


