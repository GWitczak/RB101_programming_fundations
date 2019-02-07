[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Returns [1, 2, 3] because last line of block for each iteration is truthy - 'hi'