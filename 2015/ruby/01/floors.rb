floor = 0
File.new('./floors_input').each_char { _1 == '(' ? floor += 1 : floor -= 1 }
puts floor
