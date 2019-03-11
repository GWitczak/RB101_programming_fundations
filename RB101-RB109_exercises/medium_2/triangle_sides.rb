require 'pry'

#PEDAC

# Input:
# - 3 numbers, each number represent length of triangle side

#Output:
# a symbol that represent triangle type or invalid input

#Rules
# all sides must have lenghts greater than 0
# the sum of two shorter sides must be greater than the lenght of the longest side

# equilateral - all 3 lenghts are equal
# isosceles - 2 lenghts are equal, 3rd is different
# scalene - all 3 sides have different lenght

# Data Structure
# Input type: 3 numbers, array of numbers
# Output: a symbol represents type of triangle or invalid output


#Algorithm
# chceck if all sides are greater than 0, otherwise return invalid input
# - sides.all? greater than 0

# Check if all sides are equal if yes return equilateral
# - sides.uniq.size == 1

# Check if sum of two shortest sides are greater than longest side
#  - find longest side sides.max and assign to variable longest
#  - delete longest from sides
#  - return invalid if sum of sides are less or equal to longest
#  - append longest back to sides

# Chceck if two sides are equal leght
# - if sides.uniq != sides return isosceles
# - otherwise return :scalene

def triangle(a, b, c)
  sides = [a, b, c]
  longest = sides.max

  case 
  when sides.include?(0), longest > sides.reduce(:+) - longest
    :invalid
  when sides.uniq.size == 1
    :equilateral
  when sides.uniq.size != sides.size
    :isosceles
  else
    :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid




