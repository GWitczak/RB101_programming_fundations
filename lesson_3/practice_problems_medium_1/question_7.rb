answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer) # variable new_answer is assgined to result of mess_with_it(42)

# but original 'answer' is not changed at all
p answer - 8
# so an output is 34 (42 - 8)