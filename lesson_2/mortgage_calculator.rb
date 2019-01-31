def valid?(num)
  (num.to_i.to_s == num && num.to_i >= 0) ||
    (num.to_f.to_s == num && num.to_f >= 0)
end

def prompt(message)
  puts "=> #{message}"
end

error_message = 'You must take positive number!'

prompt("Welcome in Mortgage Calculator!")
loan_amount = nil
loop do
  prompt("Please, type loan amount: ")
  loop do
    loan_amount = gets.chomp
    if valid?(loan_amount)
      break
    else
      prompt(error_message)
    end
  end

  prompt("What is your Annual Percentage Rate (APR)?")
  prompt("Please, type number with decimal (e.g. 2.2 = 2.2%).")

  apr = nil
  loop do
    apr = gets.chomp
    if valid?(apr)
      break
    else
      prompt(error_message)
    end
  end

  prompt("Would you like to type the loan duration in years or months?")
  prompt("Type 'y' for years and 'm' for months.")

  duration_years = nil
  duration_months = nil
  loop do
    duration_choice = gets.chomp.downcase
    if duration_choice == 'y'
      prompt("Please, type loan duration (years): ")
      loop do
        duration_years = gets.chomp
        valid?(duration_years) ? break : prompt(error_message)
      end
      break
    elsif duration_choice == 'm'
      prompt("Please, type loan duration (months): ")
      loop do
        duration_months = gets.chomp
        valid?(duration_months) ? break : prompt(error_message)
      end
      break
    else
      prompt("You must type 'y' for years or 'm' for months!")
    end
  end

  if !duration_years.nil?
    duration_months = duration_years.to_i * 12
  end

  monthly_ir = (apr.to_f / 1200)
  monthly_rate = loan_amount.to_i *
                 (monthly_ir.to_f /
                 (1 - (1 + monthly_ir.to_f)**- duration_months.to_f))

  puts "---------------------------------------------------"
  prompt("Informations about your loan:")
  prompt("Loan amount: #{loan_amount}")
  prompt("Loan duration: #{duration_months} months or " \
          "#{(duration_months.to_f / 12).round(2)} years.")
  prompt("Annual Precentage Rate (APR): #{apr.to_f.round(2)}%")
  prompt("Monthly interest rate: #{(apr.to_f / 12).round(2)}%")
  prompt("MONTHLY RATE: #{monthly_rate.to_f.round(2)}")
  prompt("FULL AMOUNT TO BE PAID:" \
          " #{(monthly_rate.to_f * duration_months.to_i).round(2)}")
  puts "---------------------------------------------------"

  prompt("Do you want to make another calculation for your loan? ('y' if yes)")
  repeat = gets.chomp.downcase
  break if repeat != 'y'
end

prompt("Thanks for using Mortgage Calculator!")
