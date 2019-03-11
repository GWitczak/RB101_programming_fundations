# Problem
# Write a method that takes a single integer as an argument, 
# and returns the next featured number that is greater than the argument. 
# Issue an error message if there is no next featured number.

# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, 
# and whose digits occur exactly once each. So, for example, 49 is a featured number, 
# but 98 is not (it is not odd), 97 is not (it is not a multiple of 7),
# and 133 is not (the digit 3 appears twice).

# Input: single integer number
# Output featured number greater than argument

# Rules
# - must be multiple of 7
# - must be odd
# - each digit in number can only occur once 
#   (so maxium number of digits in number is 10)

# Data structure 
# - arithmetic operation on integers, 
# - array to check if any digit occur more than once

# Algorithm
# increment number by 1
# until number is not odd and multiple of 7, increment it by 1
# start a loop
#   if number.digits.uniq == number.digits return number
#   otherwise increment number by 14
#   break if number digits number is greater than 10
# end the loop
# return error

def featured(number)
  number += 1

  until number % 7 == 0 && number.odd?
    number += 1
  end

  loop do
    if number.digits.uniq == number.digits
      return number
    else
      number += 14
    end
    break if number.digits.size > 10
  end

  "Error"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)
