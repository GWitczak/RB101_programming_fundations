def computing(x, y)
  puts "==> #{x} + #{y} = #{x + y}"
  puts "==> #{x} - #{y} = #{x - y}"
  puts "==> #{x} * #{y} = #{x * y}"
  puts "==> #{x} / #{y} = #{x / y}"
  puts "==> #{x} % #{y} = #{x % y}"
  puts "==> #{x} ** #{y} = #{x ** y}"
end


first_num = nil
puts "==> Enter the first number:"
loop do
  first_num = gets.to_f
   if first_num > 0 
    break
  else
    puts "==> You must type number greater than 0!"
  end
end

second_num = nil
puts "==> Enter the second number:"
loop do
  second_num = gets.to_f
  if second_num > 0 
      break
    else
      puts "==> You must type number greater than 0!"
    end
end

computing(first_num, second_num)