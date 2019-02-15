def reverse!(array)
  idx = 0
  return array if array.empty?

  loop do
    array[idx], array[-idx - 1] = array[-idx - 1], array[idx]
    idx += 1
    break if (idx * 2) + 1 >= array.size 
  end
  
  array
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) == []
p list == []