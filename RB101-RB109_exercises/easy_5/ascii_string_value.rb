def ascii_value(string)
  string.chars.inject(0) {|sum, char| sum += char.ord}
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

p 'ffff'.ord.chr == 'ffff'

#Further exploration
# mystery method is .chr
# Returns a string containing the character represented by the int's value according to encoding.
# If string has more than one character it returns only first character of the string