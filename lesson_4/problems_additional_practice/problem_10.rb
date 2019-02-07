munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |_, details|
  age = details["age"]

  if age.between?(0, 17) 
    details["age_group"] = 'kid'
  elsif age.between?(18, 64)
    details["age_group"] = 'adult'
  else
    details["age_group"] = 'senior'
  end
end

p munsters
