puts "Hey! Type a name!"
name = gets.chomp
name = 'Teddy' if name.empty?

teddy_age = rand(20..200)

puts "#{name} is #{teddy_age} years old!"