def factors(number)
  factors = []
  divisor = number
  while divisor > 0 
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(0)