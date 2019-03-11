def calculate(number, size)
  ((number / size.to_f) * 100).round(2)
end

def letter_percentages(string)
  characters = string.chars
  lowercase = []
  uppercase = []
  neither = []

  characters.each do |char|
    if char.match?(/[a-z]/)
      lowercase << char
    elsif char.match?(/[A-Z]/)
      uppercase << char
    else
      neither << char
    end
  end

  lower_percent = calculate(lowercase.size, characters.size)
  upper_percent = calculate(uppercase.size, characters.size)
  neither_percent = calculate(neither.size, characters.size)

  { lowercase: lower_percent, uppercase: upper_percent, neither: neither_percent }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')