floor = 0
position = 0
File.new('./floors_input').each_char do |paren|
  position += 1
  case paren
  when '('
    floor += 1
  when ')'
    floor -= 1
  end
  if floor == -1
    puts "Exiting at position #{position}"
    exit
  end
end
