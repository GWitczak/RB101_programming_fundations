[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# return value of the block is determined by the return value of the last expression within the block
# block returns boolean values

# return value of any? will be true since we have at least one odd number in our collection

# it will print only first element of collection because this element evaluates to true 
# any? break after finding first element evalutes to true