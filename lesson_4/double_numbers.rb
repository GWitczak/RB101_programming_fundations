def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

puts "My numbers: #{my_numbers} id: #{my_numbers.object_id}"
puts "Output of non mutating method: #{double_numbers(my_numbers)} id: #{double_numbers(my_numbers).object_id}"
puts "My numbers after not mutating method: #{my_numbers} id: #{my_numbers.object_id}"

puts "My numbers before mutating method: #{my_numbers} id: #{my_numbers.object_id}"
puts "Output of mutating method: #{double_numbers!(my_numbers)} id: #{double_numbers!(my_numbers).object_id}"
puts "My numbers after mutating method: #{my_numbers} id: #{my_numbers.object_id}"
