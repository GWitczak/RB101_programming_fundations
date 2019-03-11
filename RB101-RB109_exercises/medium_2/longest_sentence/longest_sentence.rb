def find_longest_sentence(sentences)
  large_sentence = ''
  sentences.each do |sentence|
    large_sentence = sentence if sentence.split.size > large_sentence.split.size
  end
  large_sentence
end

def number_of_words(string)
  string.split.size
end


text = File.read('text.txt')

sentences = text.split(/[!.?]/)
paragraphs = text.split(/\n\n/)
words = text.split(/[\n .!?,]/)

longest_sentence = find_longest_sentence(sentences).strip
longest_paragraph = paragraphs.max_by { |paragraph| paragraph.split.size }
longest_word = words.max_by { |word| word.split(//).size }

puts 'The longest sentence of attached text is: '
puts '=========================='
puts longest_sentence
puts '=========================='
puts "Number of words in this sentence: #{number_of_words(longest_sentence)}"
puts
puts 'The longest paragraph of attached text is: '
puts '=========================='
puts longest_paragraph
puts '=========================='
puts "Number of words in this paragraph: #{number_of_words(longest_paragraph)}"
puts
puts 'The longest word of attached text is: '
puts '=========================='
puts longest_word
puts '=========================='
puts "Number of letters in this paragraph: #{longest_word.length}"






