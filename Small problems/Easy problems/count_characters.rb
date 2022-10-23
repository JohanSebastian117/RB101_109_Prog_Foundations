def prompt(message)
  puts "==> #{message}"
end

prompt("Please write word or multiple words:")
#Transforming the string to have no spaces
string = gets.gsub!(/\s+/, "")

#voila
prompt("There are #{string.length} characters in: '#{string}'.")

