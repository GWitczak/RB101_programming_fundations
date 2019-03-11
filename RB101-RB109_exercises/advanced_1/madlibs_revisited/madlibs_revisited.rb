# Problem
# Make a madlibs program that reads in some text from a text file that you have created, 
# and then plugs in a selection of randomized nouns, verbs, adjectives, 
# and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, 
# and adverbs directly into your program, but the text data should come from a file 
# or other external source. Your program should read this text, and for each line, 
# it should place random words of the appropriate types into the text, and print the result.

# Input
#  - text form separate file, few lines
#  - noun, verb, adverb and adjective will be keywords for program
# Output
#  - printed text with plugged in randomized nouns, verbs, adjectivs and adverbs

#  Rules
#  - input text must be in separate file
#  - randomized nouns, verbs, adjectivs and adverbs must be plugged into the text 
#  - changed text must be printed 
#  - create lists of nouns, verbs, adjectives and adverbs

#  Data Structure
#  Input: text file converted to array of strings
#  Rules: 
#   - hash, keys: noun, verb, adjective and adverb, 
#   - value for each key is array with appropiate words
#  Output: printed String

# Algorithm
# - create text file
# - initialize variable text and assign it to return value of reading text file
# - split it to words using regex / /
# - create hash words as container for :noun, :verb, :adverb and :adjective
# - Substitute all keywords for appropiate words from hash
#   - map through array with parameter word and transform each matched word
#     - scan for keywords in text using regex after match pass it to block
#     - for each match, substitute keyword with random element of it value from hash words
#       and assign it to variable new_word
#     - if word is a keyword return new_word, otherwise return word
# - join text to string with ' ' and print it on the screen
require 'pry'


text = File.read('text.txt').split(/ /)
words = {
  noun: %w(cat dog bird fish head leg tail),
  verb: %w(spins bites licks hits),
  adj: %w(slow lazy sleepy ugly),
  adv: %w(hard often easily sometimes quickly)
}
new_word = ''

# words.each do |key, value|
#   text.scan(key.to_s).size.times { text.sub!(key.to_s, value.sample)}
# end

text.map! do |word|
  word.scan(/noun|verb|adj|adv/) do |keyword|
    new_word = word.sub(keyword, words[keyword.to_sym].sample)
  end

/adj|noun|verb|adv/.match?(word) ? new_word : word
end

puts text.join(' ')

#puts text



