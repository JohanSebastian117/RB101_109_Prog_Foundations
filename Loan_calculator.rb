# START
# GET name
# GET loan amount / interest_rate / Loan duration
# READ loan duration in months
# Calculate monthly interest rate/ loan duration in months/ monthly payment
# PRINT results

# monthly_payment = loan_amount * (monthly_int_rate / (1 - (1 + monthly_int_rate)**(-loan_duration_months)))

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

prompt 'Welcome to the loan calculator! Enter your name:'

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt 'Make sure to use a valid name.'
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  loan_amount = ''
  loop do
    prompt 'Whats the loan amount?'
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt 'Hmm.. not a valid number'
    end
  end

  interest_rate = ''
  loop do
    prompt 'Whats the interest rate?'
    prompt '(Example: 5 for 5% or 2.5 for 2.5%)'
    interest_rate = gets.chomp

    if valid_number?(interest_rate)
      break
    else
      prompt 'Hmm.. not a valid number'
    end

  
  end

  loan_duration = ''
  loop do
    prompt 'How many years is the loan?'
    loan_duration = gets.chomp

    if valid_number?(loan_duration)
      break
    else
      prompt 'Hmm.. not a valid number'
    end
  end
  # My one mistake was not dividing the APR by 100

  prompt "Here are is your loan breakdown #{name} ="

  annual_interest_rate = interest_rate.to_f / 100
  monthly_int_rate = annual_interest_rate.to_f / 12
  prompt "The monthly interest rate is %#{monthly_int_rate.round(3)}"

  loan_duration_months = loan_duration.to_i * 12
  prompt "The loan will be paid off in #{loan_duration_months} months"

  monthly_payment = loan_amount.to_f * (monthly_int_rate.to_f /
                    (1 - (1 + monthly_int_rate.to_f)**-loan_duration_months.to_f))
  prompt "The monthly payment is $#{monthly_payment.round(2)}"
  # added this from the answer, forgot to loop back
  prompt 'Another calculation? = [y] [n]'
  answer = gets.chomp

  break unless answer.downcase.start_with? 'y'
end
