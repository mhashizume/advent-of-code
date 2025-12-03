# frozen_string_literal: true

dial = 50
pass = 0

File.readlines('./input').each do |line|
  number = line.match(/[0-9]+/).to_s.to_i
  if line.start_with?('L')
    dial = (dial - number) % 100
  else
    dial = (dial + number) % 100
  end

  pass += 1 if dial.zero?
end

pp "Password is #{pass}"
