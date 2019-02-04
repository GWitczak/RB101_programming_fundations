def multiply(x, y)
  x * y
end

def square(z)
  multiply(z, z)
end

def power(number, exp)
  product = number
  (exp - 1).times { number = multiply(number, product) }
  number
end

p square(5) == 25
p square(-8) == 64

p power(5,3)
p power(5,4)
p power(2,8)