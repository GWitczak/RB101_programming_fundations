def find_fibonacci_index_by_length(number)
  idx = 2
  first_number = 1
  second_number = 1

  loop do
    idx += 1
    next_number = first_number + second_number
    break if next_number.to_s.size >= number

    first_number, second_number = second_number, next_number
  end
  idx
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847