def print_in_box(string)
  string = string[0..75] if string.size > 76

  size = string.size + 2

  print '+'
  size.times {print '-'}
  puts '+'

  print "|" 
  size.times {print ' '}
  puts "|" 

  puts "| #{string} |"

  print "|"
  size.times {print ' '}
  puts "|"

  print "+"
  size.times {print '-'}
  puts '+'
end


print_in_box('To boldly go where no one has gone before.')