# frozen_string_literal: true

dial = 50
pass = 0

File.readlines('./input').each do |line|
  number = line.match(/[0-9]+/).to_s.to_i
  require 'debug'; binding.b if number > 100
  if line.start_with?('L')
    if (dial - number).negative?
      dial = 100 + (dial - number)
    else
      dial -= number
    end
  elsif dial + number > 99
    dial = dial + number - 100
  else
    dial += number
  end

#   require 'debug'; binding.b if dial.zero?
#   pp "Dial is #{dial}"
  pass += 1 if dial.zero?
end

pp "Password is #{pass}"
