BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], 
          ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
          ['Z', 'M']]

def block_word?(string)
  up = string.upcase
  BLOCKS.each do |block|
    return false if up.include?(block[0]) && up.include?(block[1])
  end
  true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true