def word_sizes(sentence)
  result = {} 
  sentence.split.each do |word|
    current = word.count("\\a-zA-Z")
    result[current] == nil ? result[current] = 1 : result[current] += 1
  end
  result
end

 
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 } 
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 } 
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 } 
p word_sizes('') == {}