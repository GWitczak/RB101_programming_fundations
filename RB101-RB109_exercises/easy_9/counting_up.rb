def sequence(num)
  arr = []

  if num > 0
    1.upto(num) { |i| arr << i }
  elsif num < 0
    num.upto(0) { |i| arr << i }
  else
    arr << 0
  end

  arr
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]
p sequence(0)
p sequence(-3)
