arr = ['10', '11', '9', '7', '8']

arr.sort {|a, b| b.to_i <=> a.to_i}
# arr.map(&:to_i).sort.reverse!.map(&:to_s)


