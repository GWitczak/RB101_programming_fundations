def crunch(string)
  result = []
  string.chars.each_with_index {|char, idx| result << char if string[idx+1] != char}
  result.join
 end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''