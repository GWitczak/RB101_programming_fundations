DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def string_to_integer(string)
  (string.chars.map {|char| char_to_integer(char)}).inject{|a,i| a*10 + i}
end

def char_to_integer(char)
  case char
    when '0' then 0
    when '1' then 1
    when '2' then 2
    when '3' then 3
    when '4' then 4
    when '5' then 5
    when '6' then 6
    when '7' then 7
    when '8' then 8
    when '9' then 9

  end
end

def hexadecimal_to_integer(string)
  hexa = string.chars.reverse.map {|char| DIGITS[char.upcase]}
  (hexa.map! {|num| num * (16 ** hexa.index(num)) }).sum
end



p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p hexadecimal_to_integer('4D9f') == 19871