def halvsies(array)
  last_idx = array.size / 2
  last_idx -= 1 if array.size.even?
  first_half, second_half = array[0..last_idx], array[(last_idx+1)..-1]
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]