# The following code prompts the user to set their own password if they haven't done so already, 
# and then prompts them to login with that password. However, the program throws an error. 
# What is the problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected? 
# Verify that you are able to log in with your new password.

# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   set_password
# end

# verify_password


# NameError - method verify_password doesnt have acess to local variable password 
# initialized outside method definition, verify_password must take one parameter and when we call this method
# we should pass local variable password as an argument to the method

# 'Authentication failed' because inside if statement we only call method set_password but we don't 
# assign returning value of this method to password, so it's not updated and it still points to nil object
# since set_password method doesnt have access to outerscoped variable password we must assign returning value
# of this method to our password variable.

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
