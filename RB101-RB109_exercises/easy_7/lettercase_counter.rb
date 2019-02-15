def letter_case_count(string)
=begin
    counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts  
=end

  hsh = { lowercase:  0, uppercase: 0, neither: 0 }

  ('a'..'z').each do |lower|
    string.chars.each do |letter|
      if letter == lower
        hsh[:lowercase] += 1
      elsif letter.downcase == lower
        hsh[:uppercase] += 1        
      end
    end
  end

  hsh[:neither] = string.size - (hsh[:lowercase] + hsh[:uppercase])
  hsh
end







p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }