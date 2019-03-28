# Change the code so that our program successfully counts down from 10 to 1.

# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'



# counter variable must be update on line 11 to the return value of method call decrease(counter)

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'



# Further Exploration
# We specify 10 two times, which looks a bit redundant. 
# It should be possible to specify it only once. Can you refactor the code accordingly?

def decrease(counter)
  counter -= 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'