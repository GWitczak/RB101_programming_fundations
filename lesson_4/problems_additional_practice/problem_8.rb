numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# This code will print 1 and 3 in spearate lines
# Returns [3, 4] since iteration was processed 2 times, removing first two elelemtns of array

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Returns array [1, 2] because it was iterated 2 times throwing out last elelemnts of array (3 and 4).
# print 1 and 2 in separate lines


# Iterators operate on the original array in real time.