def word_cap(string)
  #string.split.map(&:capitalize).join(' ')

  string = string.split.each do |word| 
    if word.start_with?(/[A-Za-z]/)
      word[0] = word[0].upcase
      word[1..-1] = word[1..-1].downcase
    end
  end
  
    string.join(' ')
end



p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word' 