# Problem
# Write a method that computes the difference between 
# the square of the sum of the first n positive integers 
# and the sum of the squares of the first n positive integers.

# Input
# - positive integet number

# Output
# - integer, 
# -difference between square of the sum of the first n positive integers 
# and the sum of the squares of the first n positive integers

# Algorithm
# initialize 2 variables square_of_sum and sum_of_squares and assign to 0
#  - compute sum of the first n positive numbers
#     - 1 up to input number with block parameter 'i' do
#     - square_of_sum += i 
#  - compute sum of the squares of the first n positive numbers
#     - 1 up to input number with block parameter 'i' do
#       sum_of_squares += square 'i'
#  - compute difference between these two sums
#     - subtract square_of_sum**2 from sum_of_squares

def sum_square_difference(num)
  square_of_sum = 0
  sum_of_squares = 0

  1.upto(num) do |i| 
    square_of_sum += i
    sum_of_squares += i**2
  end

  square_of_sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150