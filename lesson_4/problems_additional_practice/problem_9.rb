words = "the flintstones rock"

def titleize(string)
  string.split.map(&:capitalize).join(" ")
end

p titleize(words)