def triangle(x)
  spaces = x - 1
  points = 1

  x.times do 
    puts "#{' ' * spaces}#{'*' * points}"
    spaces -= 1
    points += 1
  end
  
  points = x
  spaces = 0

   x.times do 
    puts "#{' ' * spaces}#{'*' * points}"
    points -= 1
    spaces += 1
  end
end


triangle(9)