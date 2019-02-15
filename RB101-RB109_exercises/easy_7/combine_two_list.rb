def interleave(arr1, arr2)
=begin  result = []

  arr1.each do |ele|
    result << ele
    result << arr2.shift
  end

  result
=end  
  arr1.zip(arr2).flatten

end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([1, 2, 3], ['a', 'b', 'c'])

