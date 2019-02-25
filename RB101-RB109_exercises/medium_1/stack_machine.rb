def pop_stack(stack)
  if stack.empty?
    puts 'Error! Trying to pop from empty stack!'
    exit
  else
    stack.pop
  end
end

def minilang(instructions)
  register = 0
  stack = []

  instructions.split.each_with_index do |command, idx|
      case command 
        when 'PUSH'            then stack.push(register)
        when 'ADD'             then register += pop_stack(stack)
        when 'SUB'             then register -= pop_stack(stack)
        when 'MULT'            then register *= pop_stack(stack)
        when 'DIV'             then register /= pop_stack(stack)
        when 'MOD'             then register %= pop_stack(stack)
        when 'POP'             then register = pop_stack(stack)
        when 'PRINT'           then puts register
        when command.to_i.to_s then register = command.to_i
        else
          puts "Invalid command number #{idx+1} !"
          exit
      end
  end
  nil
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')
# (3 + (4 * 5) - 7) / (5 % 3)
# 8

minilang('3 PUSH 5 PUSH ADD SUB ADD PRINT')
# Error! Trying to pop from empty stack!
