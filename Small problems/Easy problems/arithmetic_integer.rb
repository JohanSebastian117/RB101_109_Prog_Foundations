def prompt(message)
  puts("=> #{message}")
end

prompt puts "Enter the 1st number:"
number1 = gets.chomp.to_i
prompt puts "Enter the 2nd number:"
number2 = gets.chomp.to_i

addition = (number1 + number2)
substraction = (number1 - number2)
multiplication = (number1 * number2)
division = (number1 / number2)
quotient = (number1 % number2)
power = (number1 ** number2)

prompt puts "#{number1} + #{number2} = #{addition}"
prompt puts "#{number1} - #{number2} = #{substraction}"
prompt puts "#{number1} * #{number2} = #{multiplication}"
prompt puts "#{number1} / #{number2} = #{division}"
prompt puts "#{number1} % #{number2} = #{quotient}"
prompt puts "#{number1} ** #{number2} = #{power}"

