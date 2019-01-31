def average(array)
  (array.sum.to_f / array.count).round(2)
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52]) 