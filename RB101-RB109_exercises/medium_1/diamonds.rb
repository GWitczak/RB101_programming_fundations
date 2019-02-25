def print_row(grid_size, distance_from_center)
  spot_in_center = grid_size - 2 * distance_from_center
  row = '*' + ' ' * spot_in_center + '*'
  puts row.center(grid_size)
end

def print_edge_row(max_distance)
  puts " " * max_distance + '*'
end

def empty_diamond(grid_size)
  max_distance = (grid_size -1) / 2

  print_edge_row(max_distance)

  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  2.upto(max_distance) { |distance| print_row(grid_size, distance) }

  print_edge_row(max_distance)
end

def diamond(num)
  spaces = num / 2
  stars = num % 2
  middle = (num / 2) + 1

    1.upto(middle) do
      puts ' ' * spaces + '*' * stars
      spaces -= 1 if spaces > 0
      stars += 2 if stars < num
    end

    1.upto(middle - 1) do
      spaces += 1
      stars -= 2
      puts ' ' * spaces + '*' * stars
    end
end


diamond(9)

empty_diamond(9)