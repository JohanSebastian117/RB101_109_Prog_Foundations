#--------Practice Problem 1
# p [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

##--------Practice Problem 2

# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end


##--------Practice Problem 3
# def method()
# 	[1, 2, 3].reject do |num|
# 		puts num
# 	end
# end

# p method

##--------Practice Problem 4
# def method()

# 	['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
# 		hash[value[0]] = value
# 	end
# end

# p method()





##--------Practice Problem 5

# hash = { a: 'ant', b: 'bear' }
# p hash.shift


##--------Practice Problem 6

# p ['ant', 'bear', 'caterpillar'].pop.size



##--------Practice Problem 7
# def method()
# 	[1, 2, 3].any? do |num|
# 		puts num
# 		num.odd?
# 	end
# end
# p method


#The return value of the block is determined by the return value of the last expression within the block.
#any? stops iterating after this point since there is no need to evaluate the remaining items in the array


##--------Practice Problem 8

# arr = [1, 2, 3, 4, 5]
# p arr.take(2)

##--------Practice Problem 9

# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

#This means that for the first element, 'ant', the condition evaluates as false and value isn't returned.

##--------Practice Problem 10

# [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end




# How does the method treat the block's return value?
# What is the return value of the method?
# How can you use the Ruby docs to learn more about a method?
# Is the method destructive?
