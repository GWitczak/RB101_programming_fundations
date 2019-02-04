print "What is the bill? "
bill = gets.to_f

print "What is the tip percentage? "
percentage = gets.to_f

tip = ((percentage / 100) * bill).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{sprintf("%20.2f", tip)}"
puts "The total is $#{sprintf("%20.2f", total)}"