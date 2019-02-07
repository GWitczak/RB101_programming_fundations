def century(year)
  century = (year.to_f / 100).ceil.to_s
  century + century_suffix(century)
end

def century_suffix(century)
  case
  when century.end_with?('11', '12', '13') then 'th'
  when century.end_with?('1')              then 'st'
  when century.end_with?('2')              then 'nd'
  when century.end_with?('3')              then 'rd'
  else 'th'
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
