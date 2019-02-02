def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# now we are adding new element to string object instead of reassigning it
# so my_string and a_string_param points to the same object what is modified

# an_array_param was reassigned to other object
# so it's not any more points to my_array's object and does not modify original my_array
