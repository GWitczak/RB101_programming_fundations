require 'pry'

CARDS_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
                 '8' => 8, '9' => 9, '10' => 10, 'Jack' => 10, 'Queen' => 10,
                 'King' => 10, 'Ace' => 11 }

FIGURES = ['Jack', 'Queen', 'King']
ACE = 11
WINNING_SCORE = 21
HIT_LIMIT = 17

def prompt(msg)
  puts "=> #{msg}"
end

def deal_cards!(deck, players)
  players.each do |player|
    2.times do
      deck.sample.each_pair do |key, value|
        player << key
        value.pop
      end
    end
  end
end

def initialize_deck # [{'2' => [2, 2, 2, 2]}, {'3' => [3, 3, 3, 3]}, ....
  new_deck = []

  counter = 2
  loop do # adding 2-10
    new_deck << { counter.to_s => Array.new(4, counter) }
    counter += 1
    break if counter == 11
  end

  FIGURES.each do |figure| # adding figures
    new_deck << { figure => [10, 10, 10, 10] }
  end

  new_deck << { 'Ace' => [11, 11, 11, 11] }
  new_deck
end

def total(cards)
  total_arr = cards.map { |card| CARDS_VALUES[card] }
  total_sum = total_arr.sum

  if total_sum > WINNING_SCORE && cards.include?('Ace')
    loop do
      total_sum -= 10
      total_arr.delete_at(total_arr.index(ACE))
      break if total_arr.include?(ACE) == false || total_sum <= WINNING_SCORE
    end
  end

  total_sum
end

def joinor(cards)
  "#{cards[0..-2].join(', ')} and #{cards[-1]}"
end

def busted?(total_points)
  total_points > WINNING_SCORE
end

def hit!(hand, deck)
  iteration = false
  loop do
    deck.sample.each_pair do |card, available_cards|
      break if available_cards.empty?
      hand << card
      available_cards.pop
      iteration = true
    end
    break if iteration == true
  end
end

def detect_result(dealer_total, player_total)
  if player_total > WINNING_SCORE
    :player_busted
  elsif dealer_total > WINNING_SCORE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total)
  result = detect_result(dealer_total, player_total)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  answer = ''
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  loop do
  answer = gets.chomp
  break if ['y', 'n'].include?(answer)
  prompt "Choose 'y' or 'n'!"
  end
  answer.downcase.start_with?('y')
end

def grand_output(dealer, player)
  puts "=============="
  prompt "Dealer has #{joinor(dealer)}, for a total of: #{total(dealer)}"
  prompt "Player has #{joinor(player)}, for a total of: #{total(player)}"
  puts "=============="
end

player_score = 0
dealer_score = 0
puts "=============================================="
puts "  Welcome to Twenty-One! Try to win 5 times."
puts "=============================================="
puts "The goal of Twenty-One is to try to get as close to 21 as possible." 
puts %Q(If you go over 21, it's a "bust" and you lose.)
puts
puts "Press Enter to continue..."
gets

loop do
  system 'clear'
  player_hand = []
  dealer_hand = []
  deck = initialize_deck
  deal_cards!(deck, [player_hand, dealer_hand])

  player_total = total(player_hand)
  dealer_total = total(dealer_hand)

  prompt "Dealer has: #{dealer_hand[0]} and unknown card"
  prompt "You have: #{joinor(player_hand)}, for a total of #{player_total}"

  loop do
    choice = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      choice = gets.chomp.downcase
      break if ['h', 's'].include?(choice)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if choice == 'h'
      hit!(player_hand, deck)
      player_total = total(player_hand)
      prompt "You chose to hit!"
      prompt "Your cards are now: #{joinor(player_hand)}"
      prompt "Your total is now: #{player_total}"
    end

    break if choice == 's' || busted?(player_total)
  end

  if busted?(player_total)
    dealer_score += 1
    grand_output(dealer_hand, player_hand)
    display_result(dealer_total, player_total)
    prompt "Dealer score: #{dealer_score}"
    prompt "Player score: #{player_score}"

    if dealer_score == 5
      prompt "Dealer won 5 times! You loose!"
      break
    else
      play_again? ? next : break
    end

  else
    prompt "You stayed at #{player_total}"
  end

  prompt 'Dealer turn...'

  loop do
    break if dealer_total >= HIT_LIMIT
    prompt 'Dealer hits!'
    hit!(dealer_hand, deck)
    dealer_total = total(dealer_hand)
    prompt "Dealer cards are now: #{joinor(dealer_hand)}"
  end

  if busted?(dealer_total)
    player_score += 1
    grand_output(dealer_hand, player_hand)
    display_result(dealer_total, player_total)
    prompt "Dealer score: #{dealer_score}"
    prompt "Player score: #{player_score}"

    if player_score == 5
      prompt "Congratulations you won 5 times!"
      break
    else
      play_again? ? next : break
    end

  else
    prompt "Dealer stays at #{dealer_total}"
  end

  case detect_result(dealer_total, player_total)
  when :player_busted then dealer_score += 1
  when :dealer then dealer_score += 1
  when :dealer_busted then player_score += 1
  when :player then player_score += 1
  end

  grand_output(dealer_hand, player_hand)
  display_result(dealer_total, player_total)
  prompt "Dealer score: #{dealer_score}"
  prompt "Player score: #{player_score}"

  if player_score == 5
    prompt "Congratulations you won 5 times!"
    break
  elsif dealer_score == 5
    prompt "Dealer won 5 times! You loose!"
    break
  else
    break unless play_again?
  end
end

prompt "Thanks for playing Twenty-One!"
