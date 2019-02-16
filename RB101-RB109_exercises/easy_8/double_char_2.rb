CONSONANTS = %w(B C D F G H J K L M N P Q R S T V X Z W Y)

def double_consonants(string)
  result = ''
  string.chars.map do |char| 
    CONSONANTS.include?(char.upcase) ? result << (char * 2) : result << char
  end
  result
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""