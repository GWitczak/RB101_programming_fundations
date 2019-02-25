def which_lights_are_on?(number)
  
  lights = {}
  switch = false

  (1..number).each {|num| lights[num] = switch}
  1.upto(number) do |repetition|
    (repetition..number).step(repetition) {|key| lights[key] = !lights[key]}
  end

  on = lights.map { |key, value| key if value == true }.compact
  off = lights.map { |key, value| key if value == false }.compact

  if off.empty?
    puts "There are no off lights. Light number #{on.join} is on."
  elsif off.size == 1 && on.size == 1
    puts "Light number #{off.join} is off. Light number #{on.join} is on."
  elsif on.size == 1
    puts "Lights number #{off[0..-2].join(', ')} and #{off[-1]} are off. Light number #{on.join} is on."
  else
    puts "Lights number #{off[0..-2].join(', ')} and #{off[-1]} are off. Lights number #{on[0..-2].join(', ')} and #{on[-1]} are on."
  end
end


which_lights_are_on?(100)
