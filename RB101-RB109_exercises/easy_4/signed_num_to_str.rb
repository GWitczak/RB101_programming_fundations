NUMBERS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' 
}

def integer_to_str(number)
  (number.digits.map {|num| NUMBERS[num]}).reverse.join
end

def signed_integer_to_string(integer)
  if integer > 0 
    '+' << integer_to_str(integer) 
  elsif integer < 0
    "-" << integer_to_str(integer.abs)
  else
    integer_to_str(integer)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'