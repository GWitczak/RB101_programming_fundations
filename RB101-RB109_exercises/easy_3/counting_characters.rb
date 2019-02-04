puts "Please write word or multiple words: "
string = gets.chomp
string_array = string.chars
string_array.delete(" ")
puts "There are #{string_array.count} characters in '#{string}'."
