def other_xor?(condition_1, condition_2)
  condition_1 ? !condition_2 : condition_2
end


def boolean_xor?(condition_1, condition_2)
  condition_1 != condition_2
end

p boolean_xor?(5.even?, 4.even?) == true
p boolean_xor?(5.odd?, 4.odd?) == true
p boolean_xor?(5.odd?, 4.even?) == false
p boolean_xor?(5.even?, 4.odd?) == false

p other_xor?('Hello', 6.even?) == false