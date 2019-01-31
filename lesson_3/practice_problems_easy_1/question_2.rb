=begin

Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

You can use '!' to reverse boolean value when placed at first place,
when you see '!' as last character in method name, that method is probably mutating the caller.
! and ? are just parts of method names.
You can't assume that method is checking something or mutating the caller if ends with ?/!.


1. what is != and where should you use it?
  it checks if values are not equal
2. put ! before something, like !user_name
  if variable user_name is true it returns false, if user_name was false it returns true
3. put ! after something, like words.uniq!
  ! as last character in method name means that method is probably mutating the caller
4. put ? before something / 5. put ? after something
  ? : is the ternary operator for if...else
6. put !! before something, like !!user_name
  it changes boolean value twice 
  if user_name = true, !!user_name switch first for false and then switch again for true

=end