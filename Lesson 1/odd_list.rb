#had a bit of trouble with this one dealing with string arrays

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

p oddities([1, 2, 3, 4, 5, 6])

