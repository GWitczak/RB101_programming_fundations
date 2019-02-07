=begin
def running_total(arr)
  arr.map do |num|
    num = (arr.select {|number| number if arr.index(num) >= arr.index(number) }).sum
  end
end
=end

=begin
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
=end

def running_total(arr)
  result = []
  sum = 0
  arr.each_with_object(result) do |number, array|
    result << sum += number
  end
end




p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []