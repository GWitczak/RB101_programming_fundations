# Problem
# Write a method that takes the 3 angles of a triangle as arguments, 
# and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether 
#the triangle is a right, acute, obtuse, or invalid triangle.

# Input : 3 numbers, angles of the triangle, integers values
# Output : symbol, type of the triangle or invalid msg (acute, right, obtuse, invalid)

# Rules:
# :invalid
# - sum of 3 angles must be == 180
# - all of angles must be greater than 0
# :right
# - one angle is a right angle (90 degrees)
# :acute
# - all 3 angles are less than 90 degrees
# :obtuse
# - one angle is greater than 90 degrees

# Data structure
# Input - numbers - integer values converted to array of 3 elements
# output - symbol that represent type of triangle or invalid input

# Algorithm
# create array of angles
# case statement that returns appropriate symbol when certain requirments are met
# => :invalid if angles sum != 180 or angles include 0
# => :right if any angle == 90
# => :acute if all angles are less than 90
# => :obtuse otherwise

def triangle(angle_1, angle_2, angle_3)
  angles = [angle_1, angle_2, angle_3]

  case 
  when angles.sum != 180 || angles.include?(0)
    :invalid
  when angles.any?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
