def negative(num)
  num <= 0 ? num : -num
  # -num.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0   