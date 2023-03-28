=begin
Write a method that calculates and returns the index of 
the first Fibonacci number that has the number of digits specified as an argument. 
(The first Fibonacci number has index 1.)


Set first two numbers to 1, per definition

A big theme here lately have been to use my own definitions when building a problem
We first make the firsta and second iterations of the Fibonacci 1 and 1

then we make a LOOP and iterate by one index+=1
Fibonacci sequence equals 1 + 1 so we define it as such
We break if the fibonacci sequence equals the number_digits

within the loop First = second and Second = fibonacci. 
This makes the fibonacci sequence work

leave the loop and place index outside.

=end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end



find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
