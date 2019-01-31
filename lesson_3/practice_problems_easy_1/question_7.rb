def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

eval(how_deep)

# => 42
# add_eight(add_eight(add_eight(add_eight(add_eight(number)))))
# We invoke add_eight method five times with number = 2, (5*8)+2 = 42
