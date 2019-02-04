SQMETERS_TO_SQFEET = 10.7639
SQFOOT_TO_SQCENTIMETERS = 929.0304
SQFOOT_TO_SQINCHES = 144

=begin
puts "Enter the lenght of the room in meters: "
length = gets.chomp.to_f

puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

square_feet = width * length * SQMETERS_TO_SQFEET

puts "The area of the room is #{length * width} square meters (#{square_feet.round(2)} square feet)"
=end


# Further exploration
puts "Enter the lenght of the room in feet: "
length = gets.chomp.to_f

puts "Enter the width of the room in feet: "
width = gets.chomp.to_f

square_feet = width * length
square_inches = square_feet * SQFOOT_TO_SQINCHES
square_centimeters = square_feet * SQFOOT_TO_SQCENTIMETERS

puts "The area of the room is #{square_feet.round(2)} square feets, " + \
     "#{square_inches.round(2)} square inches " + \
     "and #{square_centimeters.round(2)} square centimeters."