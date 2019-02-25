def rotate_array(array)
  result = array.dup
  result.push(result.shift)
end

def rotate_rightmost_digits(number, last)
  array = number.digits.reverse
  array[-last..-1] = rotate_array(array[-last..-1])
  array.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917