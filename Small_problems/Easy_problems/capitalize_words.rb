=begin
Write a method that takes a single String argument and returns a new string that contains
the original value of the argument with the first character of every word capitalized 
and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

FIRST
	Seperate every word with #split and run a block with #map
	within #map run a block for the letters/elements to  #capitalize on every word in the array, 
	#join it with spaces (" ")
	profit

=end

def word_cap(string)
	string = string.split.map {|word| word.capitalize}.join(" ")
end


p word_cap('four score and seven')
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
