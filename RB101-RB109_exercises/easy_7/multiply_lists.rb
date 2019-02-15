def multiply_list(arr1, arr2)
  
 # arr1.map.with_index {|num, idx| num * arr2[idx]}
  

  arr1.zip(arr2).map {|num1, num| num1 * num}

end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]