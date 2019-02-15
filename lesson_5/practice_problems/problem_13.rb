arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort do |a, b|
  a.select(&:odd?) <=> b.select(&:odd?) 
end 
