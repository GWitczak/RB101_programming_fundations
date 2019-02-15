def merge(arr_1, arr_2)
  result = []
  result.concat(arr_1, arr_2).uniq
  # better solution:  arr_1 | arr_2
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


