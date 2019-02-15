def swapcase(string)
  result = string.chars.each do |char|
             if char =~ /[a-z]/
               char = char.upcase!
             elsif char =~ /[A-Z]/
               char = char.downcase!
             end
           end
  result.join
end



p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'