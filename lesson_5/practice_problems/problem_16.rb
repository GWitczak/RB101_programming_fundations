HEXADECIMAL = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def generate_UUID
  sections = [8, 4, 4, 4, 12]
  uuid = ['', '', '', '', ''] 

  sections.each_with_index do |section, idx|
    section.times {uuid[idx] += HEXADECIMAL.sample}
  end
  uuid.join('-')

=begin
    uuid = ''
    32.times { uuid << HEXADECIMAL.sample}

  puts "#{uuid.slice(0..7)}-#{uuid.slice(8..11)}-" +
       "#{uuid.slice(12..15)}-#{uuid.slice(16..19)}-#{uuid.slice(20..31)}"
=end

end



p generate_UUID

