# ------------------Selection & Transformation-----------------------


# Selection is picking certain elements out of the collection depending on some criterion.
# Transformation, on the other hand, refers to manipulating every element in the collection

# Selection and transformation both utilize the basics of looping: 
# a loop, a counter, a way to retrieve the current value, and a way to exit the loop. 

# ------------------Looping to Select and Transform-----------------------

# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0

# loop do
#   current_char = alphabet[counter]

#   if current_char == 'g'							# Selection criteria 
#     selected_chars << current_char    # appends current_char into the selected_chars string
#   end

#   counter += 1
#   break if counter == alphabet.size
# end

# p selected_chars # => "g"


#-----------

# fruits = ['apple', 'banana', 'pear']
# transformed_elements = []
# counter = 0

# loop do
#   current_element = fruits[counter]

#   transformed_elements << (current_element + 's')   # appends transformed string into array

#   counter += 1
#   break if counter == fruits.size
# end

# p transformed_elements # => ["apples", "bananas", "pears"]


# ------------------ Extracting to Methods -----------------------



def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end
	
  selected_chars
end





produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
	produce_keys = produce_list.keys
	counter = 0
	selected_fruits = {}

	loop do
		break if counter == produce_keys.size

		current_key = produce_keys[counter]
		current_value = produce_list[current_key]

		if current_value == 'Fruit'
			selected_fruits[current_key] = current_value
		end
		counter += 1

	end
	selected_fruits

end


p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
