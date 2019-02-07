[1, 2, 3].reject do |num|
  puts num
end

# Returns [1, 2, 3], since block returns nil (falsey) for each iteration (because of puts)
# and reject returns a new array containing the items in self for which the given block is not true. 