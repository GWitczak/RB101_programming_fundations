# The reverse_sentence method should return a new string with the words of its argument in reverse order, 
# without using any of Ruby's built-in reverse methods. However, the code below raises an error. 
# Change it so that it behaves as expected.

# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end

#   reversed_words.join(' ')
# end

# p reverse_sentence('how are you doing')
# # expected output: 'doing you are how'

# + method can't be use on two different objects - string and array in this case on line 11.
# I've called downto method on words.size returning value, with integer 1 passed in as an argument
# fallowed with a do..end block with i parameter, to append words element to reversed_words array
# starting from highest indexed element and finishing on the lowest indexed element.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  (words.size).downto(1) do |i|
    reversed_words << words[i-1]
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing') == 'doing you are how'