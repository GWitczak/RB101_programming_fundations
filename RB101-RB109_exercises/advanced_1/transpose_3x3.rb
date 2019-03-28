def transpose(matrix)
  new_matrix = [[], [], []]
  matrix.each do |arr|
    arr.each_with_index do |num, idx|
      new_matrix[idx] << num
    end
  end
  new_matrix
end

def transpose!(matrix)
  matrix.map!.with_index do |arr, idx_outer|
    arr.map.with_index do |num, idx_inner|
      matrix[idx_inner][idx_outer]
    end
  end
  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose!(matrix)
p matrix