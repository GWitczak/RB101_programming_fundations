def oddities(array)
  result = []
  array.map.with_index do |element, idx| 
    result << element if idx.even?
  end
  result
end

def oddities2(array)
  idx = 0
  result = []
  loop do
    break if idx >= array.size
    result << array[idx]
    idx += 2
  end
  result
end

def evens(array)
  result = []
  array.map.with_index do |element, idx| 
    result << element if idx.odd?
  end
  result
end

def evens2(array)
  result = []
  idx = 1
  while idx < array.size
    result << array[idx]
    idx += 2
  end
  result
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities2([123]) == [123]
p oddities([]) == []

p evens2([2, 3, 4, 5, 6]) == [3, 5]
p evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evens2(['abc', 'def']) == ['def']
p evens([123]) == []
p evens2([]) == []