# Why does this code print HEY you instead of HEY YOU? 
# Modify the code so that it produces the expected output.

# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# shout_out_to('you') # expected: 'HEY YOU'

# each method is called on an array - rerutning value of chars method called on string name.
# chars method is not destructive so we actually not mutating variable name
# thats why on line 7 it is still assigned to intact string object 'you'



# we can reassign returning value of this expression to local variable name 
# and use join method to convert array back to string on line 23
# or just call method upcase on our variable name on line 25

def shout_out_to(name)
  # name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name.upcase
end

shout_out_to('you')
