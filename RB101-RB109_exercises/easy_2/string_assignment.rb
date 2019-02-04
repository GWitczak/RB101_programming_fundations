name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# => "Alice"
# => "Bob"

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => "BOB"
# => "BOB"

# Name and save_name are assigned to the same object
# We are using destructive method - we are mutating the original object instead of creating new one
# Both variables points to changed object