statement = "The Flintstones Rock"

def letter_frequency(string)
  letter_hash = {}
  letters_array = string.delete(' ').chars
  letters_array.each do | letter |
    letter_hash[letter] = letters_array.count(letter)
  end
  letter_hash
end

p letter_frequency(statement)
