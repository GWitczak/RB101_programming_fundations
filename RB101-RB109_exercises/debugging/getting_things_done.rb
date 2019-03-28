# We wrote a method for moving a given number of elements from one array to another. 
# We decide to test it on our todo list, but invoking move on line 11 results in a SystemStackError. 
# What does this error mean and why does it happen?

# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


# It throws SystemStackError because we call move method within itself n - 1 times. It won't break
# when n == 0 so it still calling itself. That raises an error because of no condition under which it will stop.
# Stack keeps growing until it exceedes its limit - stack level too deep.
# We could add explicit return if n == 0 on first line in our method definition to create condition or
# instead of using recursion we can just use .times method on n parameter.

# To avoid appending nils into todo array when n is greater than from_array.size, we can add 
# guard case inside .times method to just break if there are no more elements in from_array

def move(n, from_array, to_array)
  n.times do
    to_array << from_array.shift
    break if from_array.empty?
  end
end

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']