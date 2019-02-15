def penultimate(string)
  string.split[-2]
end

def middle_word(string)
  array = string.split
  middle = array.size / 2

  if array.empty?
    ''
  elsif array.size.even?
    "#{array[middle - 1]} #{array[middle]}"
  else
    "#{array[middle]}"
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p middle_word('Write a method that returns') == 'method'
p middle_word('the middle word of a phrase') == 'word of'
p middle_word('sentence') == 'sentence'
p middle_word('') == ''




=begin
1. empty string
2. string of even words
3. string with only one word 
=end