NUMBERS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' 
}

def integer_to_str(number)
  (number.digits.map {|num| NUMBERS[num]}).reverse.join
end

p integer_to_str(4321) == '4321'
p integer_to_str(0) == '0'
p integer_to_str(5000) == '5000'