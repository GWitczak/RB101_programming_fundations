def greetings(name, profession)
 print "Hello, #{name.join(' ')}! "
 puts "Nice to have a #{profession[:title]} #{profession[:occupation]} around."
end



greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> 'Hello, John Q Doe! Nice to have a Master Plumber around.'