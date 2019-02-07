{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# .map creates a new array containing the values returned by the block
# => [nil, 'bear']