[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end


# returns [1, nil, nil] and print 2 and 3 in separate lines on the screen
# because puts always returns nil 