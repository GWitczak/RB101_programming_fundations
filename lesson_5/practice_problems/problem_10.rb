array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

array.map do |hash|
  hash.each {|key, value| hash[key] = value + 1}
end

