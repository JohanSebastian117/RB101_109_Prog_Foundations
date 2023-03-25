=begin
Write a method that takes an array of strings, and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.
=end

# using #map we iterate through the string
# using #map we also use #delete to take away all the vowels
# success


def remove_vowels(string)
	string.map { |string| string.delete('AEIOUaeiou')}
end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# %w(foo bar) is a shortcut for ["foo", "bar"] .
# Meaning it's a notation to write an array of strings 
# separated by spaces instead of commas and without quotes around them
