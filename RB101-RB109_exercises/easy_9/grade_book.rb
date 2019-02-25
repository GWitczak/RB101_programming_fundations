def get_grade(first, second, third)

  average = (first + second + third).to_f / 3

  case 
    when average.between?(0, 59) then "F"
    when average.between?(60, 69) then "D"
    when average.between?(70, 79) then "C"
    when average.between?(80, 89) then "B"
    when average.between?(90, 100) then "A"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"