DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b*#{word}\s*/i, DIGIT_HASH[word])
  end
  words.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
  words
end



p word_to_digit('Please call me at five five three one two three five six zero nine. Thanks.') 
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'