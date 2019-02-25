def rotate_array(array)
  result = array.dup
  result.push(result.shift)
end

def rotate_rightmost_digits(number, last)
  array = number.to_s.chars
  array[-last..-1] = rotate_array(array[-last..-1])
  array.join #return string
end


def max_rotation(integer)
  counter = 0
  loop do 
    integer = rotate_rightmost_digits(integer, -counter)
    counter += 1
    break if counter > integer.size
  end
  integer.to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845