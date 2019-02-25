require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARK = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnals
WHO_FIRST = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board_and_score(brd, player, computer)
  system 'clear'
  puts "Player('#{PLAYER_MARK}'): #{player}."
  puts "Computer('#{COMPUTER_MARKER}'): #{computer}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end


def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''

  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}."
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARK
end

def computer_places_piece!(brd, diff)
  if risk_square?(brd, COMPUTER_MARKER) && [3].include?(diff) # offensive
    square = smart_move(brd, COMPUTER_MARKER)
  elsif risk_square?(brd, PLAYER_MARK) && [3, 2].include?(diff) # defensive
    square = smart_move(brd, PLAYER_MARK)
  elsif empty_squares(brd).include?(5) && [3].include?(diff) # strategy
    square = 5
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARK) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(possible_moves, delimiter = ', ', word = 'or')
  if possible_moves.size == 1
    possible_moves.first
  else
    "#{possible_moves[0..-2].join(delimiter)} #{word} #{possible_moves.last}"
  end
end

def risk_square?(brd, marker)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).sort == [' ', marker, marker]
  end
  false
end

def smart_move(brd, marker)
  square = 0
  WINNING_LINES.each do |line|
    if brd.values_at(*line).sort == [' ', marker, marker]
      square = brd.select { |k, _| line.include?(k) }
    end
  end
  square.key(INITIAL_MARKER)
end

def who_first?
  prompt "Who should start first? (p)layer or (c)omputer?"
  loop do
    first = gets.chomp
    if first.downcase.start_with?('p')
      return 'player'
    elsif first.downcase.start_with?('c')
      return 'computer'
    else
      prompt "Invalid choice. Type again."
    end
  end
end

def place_piece!(brd, current, diff)
  if current == 'player'
    player_places_piece!(brd)
  elsif current == 'computer'
    computer_places_piece!(brd, diff)
  end
end

def alternate_player(current)
  if current == 'player'
    'computer'
  elsif current == 'computer'
    'player'
  end
end

def choose_difficulty_level
  prompt "Choose difficuly level: 1 - easy, 2 - medium, 3 - hard"
  loop do
    answer = gets.chomp.to_i
    if [1, 2, 3].include?(answer)
      return answer
    else
      prompt "Type 1, 2, or 3!"
    end
  end
end

system 'clear'
puts "--------- Welcome to Tic Tac Toe! ---------"
player_score = 0
computer_score = 0
current_player = WHO_FIRST
current_player = who_first? if current_player == 'choose'
difficulty_level = 1

loop do
  difficulty_level = choose_difficulty_level

  loop do
    board = intialize_board

    loop do
      display_board_and_score(board, player_score, computer_score)
      place_piece!(board, current_player, difficulty_level)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board_and_score(board, player_score, computer_score)

    if someone_won?(board)
      detect_winner(board) == 'Player' ? player_score += 1 : computer_score += 1
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    break if computer_score == 3 || player_score == 3

    prompt "Ready for next round? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end

  prompt "Player: #{player_score}, Computer: #{computer_score}."
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good Bye!"
