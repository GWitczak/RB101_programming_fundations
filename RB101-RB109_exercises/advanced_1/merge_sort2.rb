def merge_sort(arr)
  return arr if arr.size == 1 
  half = (arr.size - 1) / 2

  arr1 = arr[0..half]
  arr2 = arr[(half + 1)..-1]

  arr1 = merge_sort(arr1)
  arr2 = merge_sort(arr2)

  merge(arr1, arr2)
end

# def merge(arr1, arr2)
#   result = []
#   while !arr1.empty? && !arr2.empty?
#     if arr1[0] > arr2[0]
#       result << arr2.shift
#     else
#       result << arr1.shift
#     end
#   end

#   while !arr1.empty?
#     result << arr1.shift 
#    end
   
#    while !arr2.empty?
#     result << arr2.shift
#    end
   
#    result
# end

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

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
