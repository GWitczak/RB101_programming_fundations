# Once you get the program to run and produce a sum, you might notice that the sum is off: 
# It's lower than it should be. Why is that?

# cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

# deck = { :hearts   => cards,
#          :diamonds => cards,
#          :clubs    => cards,
#          :spades   => cards }

# def score(card)
#   case card
#   when :ace   then 11
#   when :king  then 10
#   when :queen then 10
#   when :jack  then 10
#   else card
#   end
# end

# # Pick one random card per suit

# player_cards = []
# deck.keys.each do |suit|
#   cards = deck[suit]
#   cards.shuffle!
#   player_cards << cards.pop
# end

# # Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, cards)|
#   cards.map do |card|
#     score(card)
#   end

#   sum += cards.sum
# end

# puts sum


# First of all, map is not destructive method, map! should be used on line 33 to get rid off TypeError
# Sum is lower than it should be because of logic error, whole time we are working on only one collection - cards array
# We should have 4 different collections, one for hearts, diamonds, clubs and spades. So we could pop one card 
# from each collection and then sum all remaining values in that collections. To do that let's call .dup on cards
# in hash deck. And change code block line 24-28 to refer to duplicates of cards array in hash deck.

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

player_cards = []
deck.keys.each do |suit|
  deck[suit].shuffle!
  player_cards << deck[suit].pop
end

sum = deck.reduce(0) do |sum, (_, cards)|
  cards.map! do |card|
    score(card)
  end

  sum += cards.sum
end

puts sum

# 4 untouched card collecitons should have sum of 380
# For easy check is program valid we can compare sum of remaining cards with 380 minus value of player_cards

p sum == 380 - (player_cards.map {|card| score(card)}.sum)
