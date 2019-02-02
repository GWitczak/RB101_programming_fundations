def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my_string will stay untouched outside the method because += is not mutating the caller, 
# it's reassigment and creates a new string object


# my_array will be changed, since << mutating the caller, 
# Ruby keeps using the same object that was passed in, and append the new element to it