['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# returns a hash {'a' => 'ant', 'b' => 'bear', 'c' => cat}
# because each_with_object always returns updated given argument