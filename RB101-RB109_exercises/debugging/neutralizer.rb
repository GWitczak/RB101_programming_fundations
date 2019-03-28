# We wrote a neutralize method that removes negative words from sentences. 
# However, it fails to remove all of them. What exactly happens?

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end

#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end

# puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.



# In this case, we iterate through collecion and we mutates it at the same time. 
# delete method is destructive, when we delete elements from collection and iterate through it on the same time
# it won't work as expected. 

# We can use select! method instead of each and select element if its not a negatvie word.

def neutralize(sentence)
  words = sentence.split(' ')
  words.select! do |word|
    !negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')