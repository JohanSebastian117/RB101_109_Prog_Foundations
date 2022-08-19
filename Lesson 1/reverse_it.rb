
=begin
def reverse_sentence(string)
	string.split(' ').reverse.join(' ')
end

p reverse_sentence('Reverse these words')
=end


#Reverse code #2

def reverse_sentence(string)
	words = []

	string.split.each do |word|
		word.reverse! if word.size >=5
		words << word
	end

	words.join(' ')
end


p reverse_sentence('Reverse this word')
