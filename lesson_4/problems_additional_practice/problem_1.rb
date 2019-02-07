flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}


flintstones.each_with_object(flintstones_hash) do |name, hash|
  hash[name] = flintstones.index(name)
end
