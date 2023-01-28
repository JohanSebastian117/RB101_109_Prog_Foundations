# ------------------The #each, #map, and #select Methods-----------------------

# ----------------- #each

# with an array one argument / one element per iteration
# [1, 2, 3].each do |num|
#   puts num
# end



# with a hash / two arguments / need key and value

# hash = { a: 1, b: 2, c: 3 }

# hash.each do |key, value|
#   puts "The key is #{key} and the value is #{value}"
# end



# within a method 

# def a_method
#   [1, 2, 3].each do |num|
#     puts num * 2
#   end

#   puts 'hi'
# end

# p a_method would be nil




# ----------------- #select
#SELECT ALWAYS RETURNS A NEW COLLECTION
#select evaluates the return value of the block. 
#The block returns a TRUTHY value on each iteration, which then gets evaluated by select


# [1, 2, 3].select do |num|
# 	num.odd?
# end

# [1, 2, 3].select do |num|
#   num + 1
#   puts num
# end


# ----------------- #map
#map always performs transformation based on the return value of the block


# [1, 2, 3].map do |num|
#   num * 2
# end

# ^^^^ new collection

# [1, 2, 3].map do |num|
#   p num.odd?
# end

# ^^^^ new collection boolean

# [1, 2, 3].map do |num|
#   num.odd?
#   puts num
# end

# ^^^^ new collection of an array of nils

# [1, 2, 3].map do |num|
#   p 'hi'
# end

# ^^^^^ new collection of 'Hi' 3 times
