# puts "the value of 40 + 2 is " + (40 + 2)
# throws an error because we can't add string and integer in this way


# first was to fix it - conversion to string
puts "the value of 40 + 2 is " + (40 + 2).to_s

# second way to fix it - string interpolation
puts "the value of 40 + 2 is #{40 + 2}"