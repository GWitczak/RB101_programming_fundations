def count_occurrences(occurences)
  occurences = occurences.map(&:downcase)
  occurences.uniq.each { |key| puts "#{key} => #{occurences.count(key)}" }
end

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'MotorcyclE', 'car', 'truck'
]

count_occurrences(vehicles)
