# def my_method(array)
#   if array.empty?
#     []
#   elsif
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end


def my_method(array)
  if array.empty?
    []
  elsif array.size > 1 # missing elsif condition in original code on line 4
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

# No condition for elsif on line 4 causes ruby treats next line as condtion 
# - invoking map method on the array, since it will return array and that evaluates to true
# elsif branch will be always executed if array is not empty, and will always return nil
# since lines 5-7 are treated as condition, so there is no code for execution in elsif branch, 
# and when there is no code, nil is returned.

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])