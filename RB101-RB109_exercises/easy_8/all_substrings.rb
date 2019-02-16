def substrings(string)
  result = []

  (string.size).times do |start|
    (string.size).times do |last| 
      result << string[start..last] if !string[start..last].empty?
    end
  end

  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
