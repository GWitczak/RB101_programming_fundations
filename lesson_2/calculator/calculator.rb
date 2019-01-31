require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
$language = nil

puts "=> English: en"
puts "=> Polski: pl"

loop do
  $language = gets.chomp.downcase
  break if $language == 'en' || $language == 'pl'
  puts "=> Error. Try Again."
  puts "=> Błąd. Spróbuj jeszcze raz."
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key, string=nil)
  message = messages(key, $language)
  puts("=> #{message}#{string}")
end

def valid_number?(num)
  (Integer(num.to_i) || Float(num.to_f)) && (num.to_i.to_s == num || num.to_f.to_s == num)
end

def operation_to_message(op, number1, number2)
  case op
  when '1'
    prompt('add', "(#{number1}, #{number2})")
  when '2'
    prompt('subtract', "(#{number1}, #{number2})")
  when '3'
    prompt('multiply', "(#{number1}, #{number2})")
  when '4'
    prompt('divide', "(#{number1}, #{number2})")
  end
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

prompt('greeting', "#{name.capitalize}!")

loop do # main loop
  number1 = ''
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  number2 = ''
  operator = ''

  loop do
    loop do
      prompt('second_number')
      number2 = gets.chomp

      if valid_number?(number2)
        break
      else
        prompt('valid_number')
      end
    end

    prompt('operator_choice')
    loop do
      operator = gets.chomp
      if operator == '4' && number2 == '0'
        prompt('divide_0')
        prompt('second_again')
      elsif %w(1 2 3 4).include?(operator)
        break
      end

      if !%w(1 2 3 4).include?(operator)
        prompt('valid_operator')
      else
        break
      end
    end
    break if %w(1 2 3 4).include?(operator) && !(operator == '4' && number2 == '0')
  end

  operation_to_message(operator, number1, number2)

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt('result_score', "#{result}.")

  prompt('again')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('bye')
