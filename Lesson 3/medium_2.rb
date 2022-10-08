
Question 1 --------------------------------------------------------------
# a will be unique, b will be unique, c will use a's unique ID.

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

Question 2 --------------------------------------------------------------

#They are all holding the same object ID/ integers are immutable 
a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

Question 3 --------------------------------------------------------------
#  += creates a new object while << keeps using the same object

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

Question 5 --------------------------------------------------------------


def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

Question 6 --------------------------------------------------------------


def color_valid(color)
color == "blue" || color == "green" ? true : false
end

p color_valid("blue")
p color_valid("black")

