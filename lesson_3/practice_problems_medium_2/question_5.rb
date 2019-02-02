def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end


# we can remove 'if' statment to get the same result

def color_valid(color)
  color == "blue" || color == "green"
end

