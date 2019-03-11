# Problem
# Write a method that takes an Array as an argument, and sorts that Array 
# using the bubble sort algorithm as just described. Note that your sort 
# will be "in-place"; that is, you will mutate the Array passed as an argument. 
# You may assume that the Array contains at least 2 elements.

# A bubble sort works by making multiple passes (iterations) through the Array. 
# On each pass, each pair of consecutive elements is compared. 
# If the first of the two elements is greater than the second, then the two elements are swapped. 
# This process is repeated until a complete pass is made without performing any swaps; 
# at that point, the Array is completely sorted.

# Pseudo code (wikipedia)
#
# procedure bubbleSort( A : list of sortable items )
#    n = length(A)
#    repeat
#        newn = 0
#        for i = 1 to n-1 inclusive do
#            if A[i] > A[i+1] then
#                swap(A[i], A[i+1])
#                newn = i
#            end if
#        end for
#        n = newn
#    until n <= 1
# end procedure

# Input: an array of numbers, integers
# Output: the same array, mutated and sorted

# Rules
# - compare elements of array if first element is greater than second, swap them in places
# - repeat above process until complete pass is made without making any swpas

# Data structure: array as input and the same array as output

# Algorithm:
# start a loop
# initialize swap variable and assign it to false
#   Iterate through array with index
#   break if index + 1 == array.size
#   compare current and next element
#     if element[idx] > element[idx +1] swap
#       element[idx], element[idx+1] = element[idx+1], element[idx]
#       change swap variable to true
#     otherwise make next iteration
#   end iteration
# break loop if swap == false

def bubble_sort!(array)
  tail = 0
  loop do
    swapped = false
    array.each_index do |idx|
      break if idx + 1 == array.size - tail
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swapped = true
      end
    end
    tail += 1
    break unless swapped
  end
end

p array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

















