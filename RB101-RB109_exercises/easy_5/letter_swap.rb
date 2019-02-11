def swap(sentence)
  swapped = sentence.split(' ').each do|word| 
            word[0], word[-1] = word[-1], word[0]
            end
  swapped.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'