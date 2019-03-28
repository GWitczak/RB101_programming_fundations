
def merge(arr1, arr2)
  idx1 = 0
  idx2 = 0
  result = []
  loop do
    if ( idx1 < arr1.size && idx2 <= arr2.size ) && ( idx2 == arr2.size || arr1[idx1] < arr2[idx2] )
      result << arr1[idx1]
      idx1 += 1
    elsif idx2 < arr2.size 
      result << arr2[idx2]
      idx2 += 1
    else
      break
    end
  end
  result
end






p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]