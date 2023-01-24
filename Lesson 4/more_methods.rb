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


testing 123
