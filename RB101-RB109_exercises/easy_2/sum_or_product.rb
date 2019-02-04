puts "Please enter an integer greater than 0:"
number = gets.to_i

puts "Enter 's' to coumpute the sum, 'p' to compute the product."
loop do 
  answer = gets.chomp

  num = number
  if answer == 's'

    result = (0..num).reduce(:+)
#    result = 0
#    num.times do
#      result += num
#      num -= 1
#    end
    puts "The sum of the integers between 1 and #{number} is #{result}."
    break

  elsif answer == 'p'
    result = (1..num).reduce(:*)
#    result = 1
#    num.times do
#      result *= num
#      num -= 1
#    end
    puts "The product of integers between 1 and #{number} is #{result}."
    break

  else
    puts "You must choose 's' or 'p'!"
  end
end