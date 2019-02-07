def short_long_short(str_1, str_2)
  str_1.size > str_2.size ? str_2.concat(str_1, str_2) : str_1.concat(str_2, str_1)
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"