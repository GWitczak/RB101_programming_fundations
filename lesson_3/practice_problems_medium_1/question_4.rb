def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# in first method 'buffer' will be modified and will end up being changed after method returns
# in second method we assignig 'input_array' to 'buffer' insisde the method, so method will not alter caller's input argument