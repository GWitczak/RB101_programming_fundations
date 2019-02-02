# A
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # "one is: one"
puts "two is: #{two}" # "two is: two"
puts "three is: #{three}" # "three is: three"
# Variables are reassigned inside the method so doesnt affect original values

# B
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # "one is: one"
puts "two is: #{two}" # "two is: two"
puts "three is: #{three}" # "three is: three"
# The same situation as in example A

# C
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # "one is: two"
puts "two is: #{two}" # "two is: three"
puts "three is: #{three}" # "three is: one"
# Now we are using gsub! inside the method, gsub! mutates the caller
# Original objects will be modificated




