DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def string_to_signed_integer(string)
  if string.start_with?('+')
    string.delete!('+')
    positive = true
  elsif string.start_with?('-')
    string.delete!('-')
    positive = false
  else
    positive = true
  end

  digits = string.chars.map { |char| DIGITS[char] }
  result = digits.inject(0) { |acc, digit| 10 * acc + digit }

  positive ? result : - result
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100