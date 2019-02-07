['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# If a block is given, counts the number of elements for which the block returns a true value.
# Returns 2