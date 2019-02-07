flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Beeekon)


index = 0
flintstones.any? do |name|
  index = flintstones.index(name) if name.start_with?('Be')
end

p index
