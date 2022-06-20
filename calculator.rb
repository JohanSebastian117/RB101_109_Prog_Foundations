# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = kernel.gets()
# kernel.puts(answer)

def prompt(message)
  puts("=> #{message}")
end

# very odd issue with float numbers below. They are not added correctly 
def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end



def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Substracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt "Welcome to Calculator! Enter your name:"

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt "Whats the first number?"
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt "Hmm.. not a valid number"
    end
  end

  number2 = ''
  loop do
    prompt "Whats the second number?"
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt "Hmm.. not a valid number"
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform
  1)add
  2)substract
  3)multiply
  4)divide
MSG

  prompt operator_prompt

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "Must choose 1, 2, 3, or 4"
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt "The result is #{result}"

  prompt "Do you want to perform another operation?(y to calculate again)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using Calculator!")
