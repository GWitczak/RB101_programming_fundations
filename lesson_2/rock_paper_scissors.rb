VALID_CHOICES = %w(rock paper scissors lizard spock)
SHORTCUT_CHOICES = %w(r p s l sp)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  moves = {
    rock: %w(lizard scissors), paper: %w(rock spock),
    scissors: %w(paper lizard), lizard: %w(spock paper),
    spock: %w(scissors rock)
  }
  first = first.to_sym
  moves[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def shortcuts_message
  counter = 0
  print "=> Type "
  VALID_CHOICES.each do |word|
    print "'#{SHORTCUT_CHOICES[counter]}'  for #{word}, "
    counter += 1
  end
  puts ''
end

puts "----------------------------------------"
prompt("Welcome in ROCK-PAPER-SCISSORS game!")
puts "----------------------------------------"

prompt("What is your name?")
name = ''
loop do
  name = gets.chomp
  name.empty? ? prompt("That is not correct name. Please type again.") : break
end

loop do
  prompt("Hello #{name.capitalize}! Try to get 5 points first!")
  player_score = 0
  computer_score = 0

  loop do
    choice = ''

    loop do
      shortcuts_message
      choice = gets.chomp

      if VALID_CHOICES.include?(choice) || SHORTCUT_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    case choice
    when 'r' then choice = 'rock'
    when 'p' then choice = 'paper'
    when 's' then choice = 'scissors'
    when 'l' then choice = 'lizard'
    when 'sp' then choice = 'spock'
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_result(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt("Player: #{player_score}; Computer: #{computer_score}")

    if player_score == 5
      prompt("CONGRATULATION!!! The grand winner is #{name.upcase}!")
      break
    elsif computer_score == 5
      prompt("CONGRATULATION!!! The grand winner is COMPUTER!")
      break
    end
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing. Good Bye!")
