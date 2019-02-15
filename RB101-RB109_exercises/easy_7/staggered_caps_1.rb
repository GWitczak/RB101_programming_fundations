def staggered_case(string, choice = 1)

  result = string.chars.each_with_index do |letter,idx|
    if choice == 1
      idx.even? ? letter = letter.upcase! : letter = letter.downcase!
    else choice == 2
      idx.odd? ? letter = letter.upcase! : letter = letter.downcase!
    end
  end

  result.join
end

p staggered_case('I Love Launch School!', 2) == 'i lOvE LaUnCh sChOoL!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'