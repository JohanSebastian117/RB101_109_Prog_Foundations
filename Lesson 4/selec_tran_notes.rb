# ------------------Selection & Transformation-----------------------


# Selection is picking certain elements out of the collection depending on some criterion.
# Transformation, on the other hand, refers to manipulating every element in the collection

# Selection and transformation both utilize the basics of looping: 
# a loop, a counter, a way to retrieve the current value, and a way to exit the loop. 

# ------------------Looping to Select and Transform-----------------------
# Selection:


# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0

# loop do

# 	current_char = alphabet[counter]
# 	if current_char == 'g'
# 		selected_chars << current_char
# 	end

# 	counter +=1
# 	break if counter == alphabet.size
# end



# -------------------------
# Transformation


# fruits = ['apple', 'banana', 'pear']
# transformed_elements = []
# counter = 0

# loop do

# 	current_element = fruits[counter]

# 	transformed_elements << (current_element + 's')

# 	counter +=1
# 	break if counter == fruits.size
# end



#---------------------------
#Extracting to methods

# def select_vowels(str)
#   selected_chars = ''
#   counter = 0

#   loop do
#     current_char = str[counter]

#     if 'aeiouAEIOU'.include?(current_char)
#       selected_chars << current_char
#     end

#     counter += 1
#     break if counter == str.size
#   end

#   selected_chars
# end
# p select_vowels('the quick brown fox')     

# sentence = 'I wandered lonely as a cloud'
# p select_vowels(sentence)                   



#--------------------------
#select

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce_list)
# 	produce_keys = produce_list.keys
# 	selected_fruits = {}
# 	counter = 0

# 	loop do
# 		break if counter == produce_keys.size

# 		current_key = produce_keys[counter]
# 		current_value = produce_list[current_key]

# 		if current_value == 'Fruit'
# 			selected_fruits[current_key] = current_value
# 		end
# 		counter += 1
# 	end
# 	selected_fruits
# end



# p select_fruit(produce)

#--------------------------
#transformation / mutation 


# def double_numbers(numbers)
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2

#     counter += 1
#   end

#   numbers
# end



# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
# p my_numbers

#--------------------------
#transformation on a subset

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?  #we make the counter odd instead of the number per se
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

#--------------------------------

# def multiply(numbers, multiplier)
#   multiplied_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= multiplier
#     multiplied_numbers << current_number

#     counter += 1
#   end

#   multiplied_numbers
# end


# p my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]


#-------------------------------- ERASE BELOW
