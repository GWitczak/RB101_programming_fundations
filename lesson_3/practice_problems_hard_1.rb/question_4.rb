def is_an_ip_number?(word)
 (0..255).include?(word.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

p dot_separated_ip_address?("255.123.0.1")