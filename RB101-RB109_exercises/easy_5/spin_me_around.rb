def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end




p str = 'hello world'
p str.object_id

p str2 = spin_me(str) # "olleh dlrow"
p str2.object_id

p str
p str.object_id


# Returned string is a different object.