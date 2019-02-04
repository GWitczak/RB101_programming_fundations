print 'What is your age? '
age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

year = Time.now.year
working_years = retirement_age - age
retirement_year = year + working_years


puts "It's #{year}. You will retire in #{retirement_year}."
puts "You have only #{working_years} years of work to go!"