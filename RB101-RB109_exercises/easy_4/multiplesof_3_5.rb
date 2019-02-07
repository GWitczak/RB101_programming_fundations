def multisum_inject(number)
  (1..number).inject(0) { |sum, n| (n % 5).zero? || (n % 3).zero? ? sum + n : sum } 
end

def multisum(number)
  multis = []

  for num in 1..number do 
    multis << num if num % 3 == 0 || num % 5 == 0
  end

  multis.sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168